class mongodb_base::params {

  $base_monitoring_collectd = hiera('collectd_base::base_enabled',false)
  $base_install_client = true
  $base_install_tools = true

}
