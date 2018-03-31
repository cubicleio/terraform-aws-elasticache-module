output "redis_nodes" {
  value = "${aws_elasticache_cluster.elasticache.cache_nodes}"
}
output "redis_configuration_endpoint" {
  value = "${aws_elasticache_cluster.elasticache.configuration_endpoint}"
}
output "port" {
  value = "${aws_elasticache_cluster.elasticache.port}"
}
