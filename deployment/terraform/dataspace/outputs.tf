output "registration_service_url" {
  value = "http://${azurerm_container_group.registration-service.fqdn}:${local.edc_default_port}"
}

output "did_host" {
  value = length(azurerm_storage_blob.did) > 0 ? azurerm_storage_account.did.primary_web_host : null
}
