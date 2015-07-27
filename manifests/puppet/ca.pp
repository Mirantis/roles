# == Class: roles::puppet::ca
#
# This is a role class. It is to be assigned (1 per server)
# to a system as its classification on what it does.
# It includes only profile public classes.  There should
# be nothing but include, contain, or or ordering statements
# in this class.
#
# This particular class sets up a puppetmaster with CA.
#
# === Authors
#
# Scott Brimhall <sbrimhall@mirantis.com>
#
# === Copyright
#
# Copyright 2015 Mirantis Inc, unless otherwise noted.
#
class roles::puppet::ca {

  include ::profiles::yum::foreman
  include ::profiles::hiera
  include ::profiles::common::users
  include ::profiles::ntp::client
  include ::profiles::common::sudo
  include ::profiles::common::packages
  include ::profiles::ssh::server
  include ::profiles::puppet::ca
  include ::profiles::firewall::purge
  include ::profiles::firewall::puppet

  Class['::profiles::yum::foreman'] ->
  Class['::profiles::hiera'] ->
  Class['::profiles::ntp::client'] ->
  Class['::profiles::common::users'] ->
  Class['::profiles::common::sudo'] ->
  Class['::profiles::common::packages'] ->
  Class['::profiles::ssh::server'] ->
  Class['::profiles::puppet::ca'] ->
  Class['::profiles::firewall::purge'] ->
  Class['::profiles::firewall::puppet']

}

