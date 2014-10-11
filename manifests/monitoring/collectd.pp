class mongodb_base::monitoring::collectd {

  collectd_base::concat_plugin {'mongod':
    plugin => 'processes',
    config => {
      'Process' => ['mongod']
    }
  }

  concat::fragment { 'mongodb':
    ensure => present,
    target => '/etc/collectd/my_types.db',
    content => "cache_ratio value:GAUGE:0:100
connections value:COUNTER:0:U
counter value:COUNTER:U:U
file_size bytes:GAUGE:0:U
memory value:GAUGE:0:281474976710656
percent percent:GAUGE:0:100.1
total_operations value:DERIVE:0:U\n",
    order   => "10-${name}",
    notify  => Service['collectd']
  } ->
  collectd::plugin::python {'mongodb':
    module => 'mongodb',
    modulepath => '/usr/lib/collectd',
    script_source => 'puppet:///modules/mongodb_base/monitoring/collectd/mongodb.py',
    config => {
      'Host' => '127.0.0.1'
    }
  }

}