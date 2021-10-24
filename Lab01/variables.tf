variable "environment"{
  type = string
  default = "dev"
}

variable "linux-password"{
  type = string
  sensitive = true
  validation {
    condition = lenght (var.linux-password)>8
    error_message = "El password debe contener al menos 8 caracteres"
  }
  validation {
    condition = substr(var.linux-password, 0, 3) != "123"
    error_message = "Password no puede comenzar con 123"
  }
  
}

variable "linux-user"{
  type = string
  default = "root"
  sensitive = true
  
}

output "ip-publica" {
    value = azurerm_public_ip.publicip.ip_address
  
}

variable "cantidad-servers" {
    type = number
    
  
}