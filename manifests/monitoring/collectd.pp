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

}