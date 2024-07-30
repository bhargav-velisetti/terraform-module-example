variable "project_id" {
 type        = string
}
variable "job_name" {
 type        = string
}
variable "zone" {
 type        = string
}
variable "machine_type" {
 type        = string
}
variable "max_workers" {
 type        = number
}
variable "service_account_email" {
 type        = string
}
variable "template_gcs_path" {
 type        = string
}
variable "temp_gcs_location" {
 type        = string
}
variable "subnet" {
 type        = string
}
variable "table" {
 type        = string
}
variable "region" {
 type        = string
}
variable "tables_list" {
 type        = list(string)
}
