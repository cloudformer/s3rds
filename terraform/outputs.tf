output "db_url" {
  description = "The database endpoint; open it in a browser for the DataGrip-style console"
  value       = module.s3rds.db_url
}

output "db_ro_url" {
  description = "Read-only endpoint: unlimited concurrency for read-heavy code (writes get 403); null with db_ro = false"
  value       = module.s3rds.db_ro_url
}

output "db_bucket" {
  value = module.s3rds.db_bucket
}

output "db_prefix" {
  description = "Database file prefix: s3://<bucket>/<prefix><db>.sqlite"
  value       = module.s3rds.db_prefix
}
