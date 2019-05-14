#
# Cookbook:: my-users
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#  search('users', 'platform_family:debian').each do |user_data|
#    user user_data['id'] do
#      comment user_data['comment']
#      uid user_data['uid']
#      gid user_data['gid']
#      home user_data['home']
#      shell user_data['shell']
#      password user_data['password']
#      action :create
#      manage_home true
#    end
#  end

users_manage 'users' do
  data_bag 'users'
  group_id 100
  action [ :remove, :create ]
end

users_manage 'sysadmins' do
  data_bag 'users'
  group_id 55001
  action [ :remove, :create ]
end

members = []
search('users', 'platform_family:debian').each do |u|
  members << u['id'] if u['groups'].include?('www-data') && !u['action'].eql?('remove')
end

group 'www-data' do
  gid 33
  members members
  action :create
end
