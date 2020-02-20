output "redis_nodes" {
  value = aws_elasticache_cluster.elasticache.cache_nodes[0]
}
output "port" {
  value = aws_elasticache_cluster.elasticache.port
}
