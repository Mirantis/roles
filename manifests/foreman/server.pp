# == Class: roles::foreman::server
#
# This is a role class to configure a Foreman server.
# It includes only profile public classes.  There should
# be nothing but include, contain, or or ordering statements
# in this class.
#
# This particular class sets up a Foreman server
#
# === Authors
#
# Scott Brimhall <sbrimhall@mirantis.com>
#
# === Copyright
#
# Copyright 2015 Mirantis Inc, unless otherwise noted.
#
class roles::foreman::server {

  include ::profiles::hiera
  include ::profiles::yum::foreman
  include ::profiles::ntp::client
  include ::profiles::common::users
  include ::profiles::common::sudo
  include ::profiles::common::packages
  include ::profiles::ssh::server
  include ::profiles::foreman::server
  include ::profiles::puppet::ca
  include ::profiles::foreman::proxy

  Class['::profiles::hiera'] ->
  Class['::profiles::yum::foreman'] ->
  Class['::profiles::ntp::client'] ->
  Class['::profiles::common::users'] ->
  Class['::profiles::common::sudo'] ->
  Class['::profiles::common::packages'] ->
  Class['::profiles::ssh::server'] ->
  Class['::profiles::foreman::server'] ->
  Class['::profiles::puppet::ca'] ->
  Class['::profiles::foreman::proxy']

}
