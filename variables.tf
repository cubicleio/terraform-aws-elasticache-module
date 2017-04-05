variable "elastic_cache_instance" {
  description = "The instance type stand alone development server"
}
variable "stack_name" {
  description = "Stack name."
}
variable "availability_zones" {
  type = "list"
  description = "Availability Zones"
}
variable "vpc_id" {
  description = "VPC id"
}
variable "vpc_subnets" {
  type = "list"
  description = "VPC subnets"
}