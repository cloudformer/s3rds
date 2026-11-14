# The deployment is the published module: cloudformer/infra/aws//modules/s3rds on the Terraform Registry,
# which deploys a released s3rds[server] from PyPI (s3rds_version, default: the version the module was tested with).
module "s3rds" {
  source  = "cloudformer/infra/aws//modules/s3rds"
  version = "0.1.2"
  # source = "../../terraform-aws-infra/modules/s3rds" # local: the module's working tree, before a release

  # module 0.1.2 deploys s3rds 0.3.5 by default; uncomment and set a newer release to deploy it before the module moves
  # s3rds_version = "0.3.5"

  project_name          = var.project_name
  console               = var.console
  function_url_auth     = var.function_url_auth
  console_auth_username = var.console_auth_username
  console_auth_password = var.console_auth_password
  db_ro                 = var.db_ro
  force_destroy         = var.force_destroy
}

