variable "vpc_id" {
  description = "VPC id."
}

variable "stack_name" {
  description = "Stack Name."
}

variable "engine" {
  description = "Engine type; e.g. redis or memcache."
}

variable "port" {
  description = "Port number to use."
}

variable "vpc_subnets" {
  type = "list"
  description = "VPC subnets."
}

variable "engine_version" {
  description = "Version of the Engine; e.g. for Redis 3.2.4"
}

variable "node_type" {
  description = "Instance Type."
}

variable "num_cache_nodes" {
  description = "How many Cache nodes; For Redis has to be 1."
}
