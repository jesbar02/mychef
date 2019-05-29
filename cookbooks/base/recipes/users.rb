#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

my_users_manage 'users' do
  data_bag 'users'
  group_id 100
  action [ :remove, :create ]
end

my_users_manage 'sysadmins' do
  data_bag 'users'
  group_id 55001
  action [ :remove, :create ]
end

wwwdata_members = []

data_bag('users').each do |user|
  u = Chef::EncryptedDataBagItem.load('users', user)
  wwwdata_members << u['id'] if u['groups'].include?('www-data') && !u['action'].eql?('remove')
end

group 'www-data' do
  gid 33
  members wwwdata_members
  action :create
end
