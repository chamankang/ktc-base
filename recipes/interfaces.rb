include_recipe "ktc-utils"

interfaces = Hash.new
%w{management private disk}.each do |network|
  n = Hash.new
  n["if"] = KTC::Network.if_lookup network
  n["ip"] = KTC::Network.address network
  a = "addresses"
  n["nm"] = node["network"]["interfaces"][n["if"]][a][n["ip"]]["netmask"]
  target = IPAddr.new(n["ip"]+"/"+n["nm"]).to_s
  routes = Array.new
  node[:subnets][network].each do |subnet|
    if subnet[0] == target
      n["gw"] = subnet[2]
      if network != node[:default_gw]
        r = route "0.0.0.0/0" do
          gateway n["gw"]
          action :nothing
        end
        r.run_action :delete
      end
    else
      routes.push subnet
    end
  end
  n["routes"] = routes.map do |s|
    r = route s[0] do
      gateway n["gw"]
      netmask s[1]
    end
    r.run_action :add
    s[0..1] + [n["gw"]]
  end
  interfaces[network] = n
end

r = route "0.0.0.0/0" do
  gateway interfaces[node[:default_gw]]["gw"]
  action :nothing
end
r.run_action :add

t = template "/etc/network/interfaces" do
  source "interfaces.erb"
  action :create
  variables(
    :management => interfaces["management"],
    :private => interfaces["private"],
    :disk => interfaces["disk"]
  )
end
t.run_action :create
