# == Class: roles::openstack::pmlc_ceph_osd
#
# This is a role class. It is to be assigned (1 per server)
# to a system as its classification on what it does.
# Role classes only include profile classes. No org-specific
# lookups or anything like that. Includes only.
#
# This particular role is for a Ceph OSD node using the
# masterless preliminary mirantis lifecycle management.
#
# === Authors
#
# Scott Brimhall <sbrimhall@mirantis.com>
#
# === Copyright
#
# Copyright 2015 Mirantis Inc, unless otherwise noted.
#
class roles::openstack::pmlc_ceph_osd {

  include ::profiles::ntp::client
  include ::profiles::common::sudo
  include ::profiles::common::packages

  # Order classes in the order we want them applied
  Class['::profiles::ntp::client'] ->
  Class['::profiles::common::sudo'] ->
  Class['::profiles::common::packages'] ->

}
