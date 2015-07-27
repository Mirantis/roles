# == Class: roles::foreman::boostrap_server
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
class roles::foreman::bootstrap_server {

  include ::profiles::hiera
  include ::profiles::yum::foreman
  include ::profiles::ntp::client
  include ::profiles::common::users
  include ::profiles::common::sudo
  include ::profiles::common::packages
  include ::profiles::ssh::server
  include ::profiles::foreman::server
  include ::profiles::puppet::bootstrap_ca
  include ::profiles::foreman::proxy
  include ::profiles::firewall::purge

  Class['::profiles::hiera'] ->
  Class['::profiles::yum::foreman'] ->
  Class['::profiles::ntp::client'] ->
  Class['::profiles::common::users'] ->
  Class['::profiles::common::sudo'] ->
  Class['::profiles::common::packages'] ->
  Class['::profiles::ssh::server'] ->
  Class['::profiles::foreman::server'] ->
  Class['::profiles::puppet::bootstrap_ca'] ->
  Class['::profiles::foreman::proxy'] ->
  Class['::profiles::firewall::purge']

}
