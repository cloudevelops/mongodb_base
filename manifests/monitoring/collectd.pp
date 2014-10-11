class mongodb_base::monitoring::collectd {

  collectd_base::concat_plugin {'mongod':
    plugin => 'processes',
    config => {
      'Process' => ['mongod']
    }
  }

  collectd::plugin::python {'mongodb':
    module => 'mongodb',
    modulepath => '/usr/lib/collectd',
    script_source => 'puppet:///modules/mongodb_base/monitoring/collectd/mongodb.py',
    config => {
      'Host' => '127.0.0.1'
    }
  }

  concat::fragment { 'mongodb':
    ensure => present,
    target => '/etc/collectd/my_types.db',
    content =>
      "cache_ratio value:GAUGE:0:100\N
      connections value:COUNTER:0:U\N
      counter value:COUNTER:U:U\N
      file_size bytes:GAUGE:0:U\N
      memory value:GAUGE:0:281474976710656\N
      percent percent:GAUGE:0:100.1\N
      total_operations value:DERIVE:0:U\N",
    order   => "10-${name}",
  }


}