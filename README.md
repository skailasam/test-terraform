# terraform-aws-xebia-route53
Terraform Module to provision Route53

## Module reference

https://github.com/terraform-aws-modules/terraform-aws-route53

## Inputs

|Resource Type | Name | Description | Type | Default |
|--------------|------|-------------|------|---------|
|  Zones  |<a name="create_zones"></a> [create_zones](#create_zones) | Whether to create Route53 zone. | `bool` | `true` |
|  Zones  |<a name="zones"></a> [zones](#zones)                      | Map of Route53 zone parameters. | `any` | `{}` |
|  Zones  |<a name="zones_tags"></a> [zones_tags](#zones_tags)       | Tags added to all zones. Will take precedence over tags from the 'zones' variable. | `map(any)` | `{}` |
| Records |<a name="create_records"></a> [create_records](#create_records) | Whether to create DNS records. | `bool` | `true` |
| Records |<a name="records"></a> [records](#records)                | List of maps of DNS records. | `any` | `[]` |


## Outputs

|Resource Type | Name | Description |
|--------------|------|-------------|
|  Zones  | <a name="route53_zone_zone_id">     </a>[route53_zone_zone_id](#route53_zone_zone_id)           | Zone ID of Route53 zone                   |
|  Zones  | <a name="route53_zone_name_servers"></a>[route53_zone_name_servers](#route53_zone_name_servers) |  Name servers of Route53 zone             |
|  Zones  | <a name="route53_zone_name">        </a>[route53_zone_name](#route53_zone_name)                 | Name of Route53 zone                      |
| Records | <a name="route53_record_name">      </a>[route53_record_name](#route53_record_name)             | The name of the record                    |
| Records | <a name="route53_record_fqdn">      </a>[route53_record_fqdn](#route53_record_fqdn)             | FQDN built using the zone domain and name |

