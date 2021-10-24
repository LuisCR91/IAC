terraform {
    required_providers{
        azurem = {
            source = "hashicorp/azurem"
            version = "=2.46.0"
        }
    }
}

provider "azurem"{
    features {}
}
module "azure-server"{
  source = "./modules/server" 
  cantidad-servers = 1
  linux-password = "Password01"
  linux-user = "adminqa"
  environment = "qa"
  cantidad-server=2
}