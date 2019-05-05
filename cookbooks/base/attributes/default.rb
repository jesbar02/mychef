#
# Cookbook Name:: base
# Attribute:: default.rb
#
# Copyright 2019, Jesus Hernandez Barba
#
#

# Colombia — co.south-america.pool.ntp.org
default['ntp']['servers'] = [
  '0.south-america.pool.ntp.org',
  '1.south-america.pool.ntp.org',
  '2.south-america.pool.ntp.org',
  '3.south-america.pool.ntp.org',
]
