class mongodb_base::monitoring {

  if $mongodb_base::base_monitoring_collectd {
    include mongodb_base::monitoring::collectd
  }

}
