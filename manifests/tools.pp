class mongodb_base::tools {

  if $mongodb_base::server::base_install_tools {
    package {'mongodb-org-tools':
      ensure => present
    }
  }

}
