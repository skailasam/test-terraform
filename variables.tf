variable "create_zones" {
  description = "Whether to create Route53 zone"
  type        = bool
  default     = true
}

variable "zones" {
  description = "Map of Route53 zone parameters"
  type        = any
  default     = {}
}

variable "zones_tags" {
  description = "Tags added to all zones. Will take precedence over tags from the 'zones' variable"
  type        = map(any)
  default     = {}
}

variable "create_records" {
  description = "Whether to create DNS records"
  type        = bool
  default     = true
}

variable "zone_id" {
  description = "ID of DNS zone"
  type        = string
  default     = null
}

variable "records" {
  description = "List of maps of DNS records"
  type        = any
  default     = []
}

variable "region" {
  type    = string
  default = "ap-southeast-1"
}
variable "extra_tags" {
  type        = map(string)
  default     = {}
  description = "Add extra tags to your resource"
}