variable "acrs" {
    description = "A map of Azure Container Registry instances to create"
    type = map(object({
        name     = string
        rg_name  = string
        location = string
    }))
}