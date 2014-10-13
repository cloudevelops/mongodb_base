class mongodb_base::client {

  if $mongodb_base::base_install_client {
    include mongodb::client
  }

}
