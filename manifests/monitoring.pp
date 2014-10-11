class mongodb_base::monitoring {

  if $mongodb_base::server::base_monitoring_collectd {
    include mongodb_base::monitoring::collectd
  }

}
