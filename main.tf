provider "azurerm" { 
    features {}
}

resource "azurerm_resource_group" "containerRG" {
    name = "ContainerRG"
    location = "West Europe"
  
}

resource "azurerm_container_group" "hello-world" {
    name                = "example-continst"
    location            = azurerm_resource_group.containerRG.location
    resource_group_name = azurerm_resource_group.containerRG.name
    ip_address_type     = "public"
    dns_name_label      = "ric-node-test"
    os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "richikm/node-test-app:1.0"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 3000
      protocol = "TCP"
    }
  }
}