#Variable file
variable "location" {
    type = string
    description = "Resource Location"
    default = "eastus"
}

variable "RGName" {
    type = string
    description = "Resource Group Name"
    default = "eastus"
}

variable "StgAccName" {
    type = string
    description = "Storage Account Name"
    default = "eastus"
}

