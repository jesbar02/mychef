#
# Cookbook Name:: base
# Recipe:: motd
#
# Copyright 2019, Jesus Hernandez Barba
#
#

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  variables(
    arch: "#{node['kernel']['os']} #{node['kernel']['release']} #{node['kernel']['version']}",
    fqdn: node['fqdn'],
    ip: node['ipaddress'],
    roles: node['roles'],
    environment: node.chef_environment
  )
end
