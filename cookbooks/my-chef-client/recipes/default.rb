#
# Cookbook:: my-chef-client
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

node.default['chef_client']['interval'] = 1200
node.default['chef_client']['splay'] = 1200

include_recipe 'chef-client::default'
