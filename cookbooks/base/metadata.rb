name             'base'
maintainer       'Jesus Hernandez Barba'
maintainer_email 'jesbar02@gmail.com'
license          'All Rights Reserved'
description      'Installs/Configures basic node configurations'
long_description 'Installs/Configures basic node configurations'
source_url       'https://github.com/jesbar02/mychef.git'
issues_url       'https://tracker.mroomstech.com'
version '0.2.1'
chef_version '>= 13.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/base/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/base'

depends 'ntp'
depends 'my-users'
