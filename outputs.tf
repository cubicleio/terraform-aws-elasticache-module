output "security_group_id" {
  value = "${aws_security_group.security_groups_for_cache.id}"
}

output "redis_address" {
  value = "${aws_elasticache_cluster.elastic_cache.cluster_address}"
}
output "port" {
  value = "${aws_elasticache_cluster.elastic_cache.port}"
}
