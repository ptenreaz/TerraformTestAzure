variable "primary_location" {
  type = string
  description = "Primary Location"
  default = "francecentral"
}

variable "secondary_location" {
  type = string
  description = "Secondary Location"
  default = "UK West"
}

variable "location_map" {
  type = map
  default = {
    "pri"  = "francecentral"
    "sec" = "UK West"
  }
}

variable "set_password" {
  type = bool
  default = false
}

variable "location_list" {
  type = list
  default = ["francecentral", "UK West", "North Europe"] 
}
