module "dataflow-job" {
  source  = "../modules"

  for_each = toset(var.tables_list)

  table = "${each.key}"
  region = var.region
  project_id  = var.project_id
  zone = var.zone
  machine_type = var.machine_type
  max_workers = var.max_workers
  service_account_email = var.service_account_email
  template_gcs_path =  var.template_gcs_path
  temp_gcs_location = var.temp_gcs_location
  subnet = var.subnet 

  parameters = {
        bar = "example string"
        foo = 123
  }
}

