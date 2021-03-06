name 'my-users'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures my-users'
long_description 'Installs/Configures my-users'
version '0.1.4'
chef_version '>= 13.0'

%w{ ubuntu debian redhat centos fedora freebsd mac_os_x }.each do |os|
  supports os
end

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/my-users/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/my-users'
