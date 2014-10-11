# == Class: mongodb_base
#
# Full description of class mongodb_base here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { mongodb_base:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class mongodb_base (
  $enable_10gen    = undef,
  $init            = undef,
  $location        = undef,
  $packagename     = undef,
  $version         = undef,
  $servicename     = undef,
  $service_enable  = undef,
  $logpath         = undef,
  $logappend       = undef,
  $fork            = undef,
  $port            = undef,
  $dbpath          = undef,
  $journal         = undef,
  $nojournal       = undef,
  $smallfiles      = undef,
  $cpu             = undef,
  $noauth          = undef,
  $auth            = undef,
  $verbose         = undef,
  $objcheck        = undef,
  $quota           = undef,
  $oplog           = undef,
  $oplog_size      = undef,
  $nohints         = undef,
  $nohttpinterface = undef,
  $noscripting     = undef,
  $notablescan     = undef,
  $noprealloc      = undef,
  $nssize          = undef,
  $mms_token       = undef,
  $mms_name        = undef,
  $mms_interval    = undef,
  $slave           = undef,
  $only            = undef,
  $master          = undef,
  $source          = undef,
  $replset         = undef,
  $rest            = undef,
  $slowms          = undef,
  $keyfile         = undef,
  $bind_ip         = undef,
  $pidfilepath     = undef
) inherits mongodb_base::params {

  fail("Mongodb init class is deprecated. Please use class { 'mongodb::server': }")

}
