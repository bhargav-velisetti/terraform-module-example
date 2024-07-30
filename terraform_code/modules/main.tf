resource "random_id" "big_data_job_name_suffix" {
  byte_length = 4
  keepers = {
    region          = var.region
    subscription_id = var.table
  }
}

resource "google_dataflow_job" "pubsub_stream" {
  name = "${var.table}-${random_id.big_data_job_name_suffix.dec}"
  machine_type = var.machine_type
  max_workers = var.max_workers
  zone = var.zone
  subnetwork = var.subnet 
  enable_streaming_engine = true
  on_delete = "drain"
  service_account_email = var.service_account_email
  template_gcs_path =  var.template_gcs_path
  temp_gcs_location = var.temp_gcs_location

    parameters = {
        bar = "example string"
        foo = 123
  }
}

