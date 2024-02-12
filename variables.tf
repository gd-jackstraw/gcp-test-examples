variable "projectid" {
  type = string
}

variable "prefix"{
 type=string
}

variable "bucket_admin" {
  type = string
}

variable "account_id" {
	type = string
	description = "Unique service account ID"
}

variable "display_name" {
	type = string
	description = "Unique service account display name"
}

variable "service_account" {
	type = string
}
