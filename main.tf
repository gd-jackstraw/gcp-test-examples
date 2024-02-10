locals {
gcs_bucket_list = ["bucket-account"]



module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 5.0"
  project_id  = var.projectid
  count = 5
  for_each            = {for list in local.gcs_bucket_list: list=>list}
  names                = "${var.prefix}list"
  
  
  prefix = var.prefix
  set_admin_roles = true
  admins = ["group:foo-admins@example.com"]
  versioning = {
    first = true
  }
  bucket_admins = {
    second = "user:spam@example.com,user:eggs@example.com"
  }
}