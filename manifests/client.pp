class mongodb_base::client {

  if $mongodb_base::server::base_install_client {
    include mongodb::client
  }

}
