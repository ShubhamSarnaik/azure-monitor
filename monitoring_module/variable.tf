variable "workspace_name" {
    description = "The name of the log analytics workspace"
    type = string  
}

variable "location" {
    description = "The location/region for the workspace"
    type = string
    default = "East US"      
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type = string
}

variable "retention_in_days" {
    description = "retention period in days for logs"
    type = string
    default = 30      
}
