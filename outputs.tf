output "redis_address" {
  value = "${aws_elasticache_cluster.elasticache.cluster_address}"
}
output "port" {
  value = "${aws_elasticache_cluster.elasticache.port}"
}
