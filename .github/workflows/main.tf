provider "aws" {
  region = var.region
  default_tags {
    tags = var.extra_tags
  }
}

locals {
  zone_name = sort(keys(module.route_53_zones.route53_zone_zone_id))[0]
  #  zone_id = module.zones.route53_zone_zone_id["app.terraform-aws-modules-example.com"]
}

module "route_53_zones" {
  source = "./modules/terraform-aws-route53-master/modules/zones"

  create = var.create_zones
  zones  = var.zones

  tags = var.zones_tags
}

module "route_53_records" {
  source = "./modules/terraform-aws-route53-master/modules/records"

  create    = var.create_records
  zone_name = local.zone_name
  records   = var.records

  depends_on = [module.route_53_zones]
}