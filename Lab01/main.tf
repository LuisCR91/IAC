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

resource "azurem_resource_group" "grupito"{
    name = "IACPrueba"
    location = "centralus"
    tags = {
        "Env" = "Dev"
    }
}