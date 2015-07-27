# == Class: roles::openstack::compute
#
# This is a role class. It is to be assigned (1 per server)
# to a system as its classification on what it does.
# Role classes only include profile classes. No org-specific
# lookups or anything like that. Includes only.
#
# This particular role is for an openstack compute node.
#
# === Authors
#
# Scott Brimhall <sbrimhall@mirantis.com>
#
# === Copyright
#
# Copyright 2015 Mirantis Inc, unless otherwise noted.
#
class roles::openstack::compute {

  include ::profiles::puppet::agent
  include ::profiles::ntp::client
  include ::profiles::common::users
  include ::profiles::common::sudo
  include ::profiles::common::packages
  include ::profiles::ssh::server
  include ::profiles::openstack::nova::compute
  include ::profiles::openstack::neutron::client

  # Order classes in the order we want them applied
  Class['::profiles::puppet::agent'] ->
  Class['::profiles::ntp::client'] ->
  Class['::profiles::common::users'] ->
  Class['::profiles::common::sudo'] ->
  Class['::profiles::common::packages'] ->
  Class['::profiles::ssh::server'] ->
  Class['::profiles::openstack::keystone'] ->
  Class['::profiles::openstack::nova::compute'] ->
  Class['::profiles::openstack::neutron::client']

}
