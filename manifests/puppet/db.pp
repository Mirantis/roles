# == Class: roles::puppet::db
#
# This is a role class. It is to be assigned (1 per server)
# to a system as its classification on what it does.
# It includes only profile public classes.  There should
# be nothing but include, contain, or or ordering statements
# in this class.
#
# This particular class sets up a PuppetDB server
#
# === Authors
#
# Scott Brimhall <sbrimhall@mirantis.com>
#
# === Copyright
#
# Copyright 2015 Mirantis Inc, unless otherwise noted.
#
class roles::puppet::db {

  include ::profiles::yum::default
  include ::profiles::ntp::client
  include ::profiles::common::users
  include ::profiles::common::sudo
  include ::profiles::common::packages
  include ::profiles::puppet::agent
  include ::profiles::ssh::server
  include ::profiles::puppet::db

  Class['::profiles::yum::default'] ->
  Class['::profiles::ntp::client'] ->
  Class['::profiles::common::users'] ->
  Class['::profiles::common::sudo'] ->
  Class['::profiles::common::packages'] ->
  Class['::profiles::puppet::agent'] ->
  Class['::profiles::ssh::server'] ->
  Class['::profiles::puppet::db']

}
