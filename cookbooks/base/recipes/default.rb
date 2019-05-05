#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2019, Jesus Hernandez Barba
#
#

include_recipe 'base::motd'
include_recipe 'base::setup'
include_recipe 'ntp::default'
