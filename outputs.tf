output "redis_nodes" {
  value = "${aws_elasticache_cluster.elasticache.cache_nodes}"
}
output "port" {
  value = "${aws_elasticache_cluster.elasticache.port}"
}
