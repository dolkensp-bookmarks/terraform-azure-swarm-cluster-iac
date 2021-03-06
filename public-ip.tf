/**
* Public IPs
**/

resource "azurerm_public_ip" "tf-admin-public-ip" {
  name                         = "admin-public-ip"
  resource_group_name          = "${azurerm_resource_group.tf-swarm-cluster-resourcegroup.name}"
  location                     = "${azurerm_resource_group.tf-swarm-cluster-resourcegroup.location}"
  public_ip_address_allocation = "static"
  domain_name_label            = "${var.adminPublicIpFqdnName}"
}

resource "azurerm_public_ip" "tf_ag_public_ip" {
  name                         = "ag-public-ip"
  resource_group_name          = "${azurerm_resource_group.tf_ag_resourcegroup.name}"
  location                     = "${azurerm_resource_group.tf_ag_resourcegroup.location}"
  public_ip_address_allocation = "dynamic"
  domain_name_label            = "${var.agPublicIpFqdnName}"
}
