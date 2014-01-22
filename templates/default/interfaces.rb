auto lo
iface lo inet loopback

auto <%= @private["if"] %>
iface <%= @private["if"] %> inet static
address <%= @private["ip"] %>
netmask <%= @private["nm"] %>
<%- if node["default_gw"] == "private" %>
gateway <%= @private["gw"] %>
<%- end %>

auto <%= @management["if"] %>
iface <%= @management["if"] %> inet static
address <%= @management["ip"] %>
netmask <%= @management["nm"] %>
<%- if node["default_gw"] == "management" %>
gateway <%= @management["gw"] %>
<%- end %>
dns-nameservers <%= node["dns"]["master"] %>
dns-search <%= node["domain"] %>
<%- @management["routes"].each do |route| %>
post-up route add -net <%= route[0] %> netmask <%= route[1] %> gw <%= route[2] %>
<%- end %>

auto <%= @disk["if"] %>
iface <%= @disk["if"] %> inet static
address <%= @disk["ip"] %>
netmask <%= @disk["nm"] %>
<%- @disk["routes"].each do |route| %>
post-up route add -net <%= route[0] %> netmask <%= route[1] %> gw <%= route[2] %>
<%- end %>
