#
# Cookbook Name:: base
# Recipe:: setup
#
# Copyright 2019, Jesus Hernandez Barba
#
#

package 'nano' do
  action :install
end

package 'tree' do
  action :install
end
