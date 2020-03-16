
# Configure the Microsoft Azure Provider
provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you're using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}

    subscription_id = var.subscription_id
    #client_id       = "xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    #client_secret   = "xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    #tenant_id       = "xxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "myterraformgroup" {
    name     =  var.rg_name
    location = "eastus"

    tags = {
        environment = "Terraform Demo"
    }
}
