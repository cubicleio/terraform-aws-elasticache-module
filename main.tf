data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

resource "aws_security_group" "security_group" {
  name = "${var.stack_name}-${var.engine}-sg"
  vpc_id = "${var.vpc_id}"

  ingress {
    protocol  = "tcp"
    from_port = "${var.port}"
    to_port   = "${var.port}"
    cidr_blocks = ["${cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)}"]
  }
}

resource "aws_elasticache_subnet_group" "elasticache_subnet" {
  name = "${var.stack_name}-subnet-group"
  subnet_ids = ["${var.vpc_subnets}"]
  description = "Subnet Group for Elasticache ${stack_name} ${var.engine}"
}

resource "aws_elasticache_parameter_group" "parameter_group" {
  name   = "${var.stack_name}-${var.engine}-pg"
  family = "${var.engine}element(split(".", ${var.engine_version}), 0)element(split(".", ${var.engine_version}), 1)"
}

resource "aws_elasticache_cluster" "elasticache" {
  cluster_id = "${var.stack_name}-${var.engine}"
  engine = "${var.engine}"
  engine_version = "${var.engine_version}"
  node_type = "${var.node_type}"
  num_cache_nodes = "${var.num_cache_nodes}"
  parameter_group_name = "${aws_elasticache_parameter_group.parameter_group.id}"
  port = "${var.port}"
  subnet_group_name = "${aws_elasticache_subnet_group.elasticache_subnet.name}"
  security_group_ids = ["${aws_security_group.security_group.id}"]
  apply_immediately = "true"
  availability_zones = "${var.availability_zones}"

  tags {
    Name = "${var.stack_name}-${var.engine}"
  }
}