default[:default_gw] = "private"
default[:set_interfaces] = false
default[:subnets] = {
  "disk" => [
    ["10.210.2.32", "255.255.255.224", "10.210.2.62"]
  ],
  "private" => [
    ["10.210.1.32", "255.255.255.224", "10.210.1.62"]
  ],
  "management" => [
    ["10.9.241.0", "255.255.255.0", "10.9.241.1"]
  ]
}
