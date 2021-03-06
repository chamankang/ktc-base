#
# CookBook:: base
# Recipe:: default
# Author:: Jesse Nelson <spheromak@gmail.com>
#
# something new


# include recipes from our run_list attribute
#

# hack for chef-zero/solo
Chef::Config[:validation_key] ||= "/tmp/chef/validation.pem"
Chef::Config[:client_key] ||= "/tmp/chef/client.pem"
node[:base][:includes].each do |recipe|
  include_recipe recipe
end
