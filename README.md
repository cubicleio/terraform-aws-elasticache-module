# Terraform Elasticache Module

A Terraform module containing Elasticache with security group, Elasticache subnet group and paramater group.

* `vpc_id` - VPC id. (Required)
* `stack_name` - Stack Name. (Required)
* `engine` - Engine type; e.g. redis or memcache. (Required)
* `port` - Port number to use. (Required)
* `vpc_subnets` - VPC subnets. (Required)
* `engine_version` - Version of the Engine; e.g. for Redis 3.2.4 (Required)
* `node_type` - Instance Type. (Required)
* `num_cache_nodes` - How many Cache nodes; For Redis has to be 1. (Optional)

## Outputs
<!-- * `ecs_cluster_id` - `id` of the ECS cluster. -->

## Usage example:
```
module "redis" {
  source = "git@github.com:devops-israel/terraform-aws-elasticache-module.git"
  vpc_id = "${var.vpc_id}"
  stack_name = "${var.stack_name}"
  engine = "redis"
  port = "6379"
  vpc_subnets = "${var.vpc_subnets_ids}"
  engine_version = "3.2.4"
  node_type = "cache.t2.micro"
}
```

## Contributing
Report issues/questions/feature requests on in the [Issues](https://github.com/devops-internal/terraform-aws-elasticache-module/issues) section.

Pull requests are welcome! Ideally create a feature branch and issue for every
individual change you make. These are the steps:

1. Fork the repo.
2. Create your feature branch from master (`git checkout -b my-new-feature`).
4. Commit your awesome changes (`git commit -am 'Added some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request and tell us about your changes.

## Authors
Created and maintained by [Josh Dvir](https://github.com/joshdvir) - josh@devopspro.co.uk.