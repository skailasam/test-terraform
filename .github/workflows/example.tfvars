create_zones   = true
create_records = true
zones_tags     = { "Managed by" = "Xebia" }
zones = {
  "terraform-aws-modules-example.com" = {
    comment = "example.com (production)"
    tags = {
      Name = "terraform-aws-modules-example.com"
    }
  }

  # for private zones pass vpc id 
  #     "private-vpc-example.com" = {
  #       domain_name = "private-vpc-example.com"
  #       comment     = "private-vpc-example.com"
  #       vpc = [
  #         {
  #           vpc_id = "vpc-90944ee9"
  #         },
  #       ]
  #       tags = {
  #         Name = "private-vpc-example.com"
  #       }
  #     }  
}

records = [{
  name = "tf-list1"
  type = "A"
  ttl  = 3600
  records = [
    "10.10.10.10",
  ]
  },
  #       {
  #             name = "tf-list2"
  #             type = "A"
  #             ttl = 3600
  #             records = [
  #                   "20.10.10.10",
  #                   "30.10.10.10",
  #             ]
  #       },
  #       {
  #       name           = "geo"
  #       type           = "CNAME"
  #       ttl            = 5
  #       records        = ["europe.test.example.com."]
  #       set_identifier = "europe"
  #       geolocation_routing_policy = {
  #         continent = "EU"
  #       }
  #     },
  #     {
  #       name           = "test"
  #       type           = "CNAME"
  #       ttl            = 5
  #       records        = ["test.example.com."]
  #       set_identifier = "test-primary"
  #       weighted_routing_policy = {
  #         weight = 90
  #       }
  #     },
  #     {
  #       name           = "test"
  #       type           = "CNAME"
  #       ttl            = 5
  #       records        = ["test2.example.com."]
  #       set_identifier = "test-secondary"
  #       weighted_routing_policy = {
  #         weight = 10
  #       }
  #     },
]

