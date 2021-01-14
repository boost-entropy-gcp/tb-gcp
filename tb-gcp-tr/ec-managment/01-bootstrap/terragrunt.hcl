terraform {
  source = "github.com/tranquilitybase-io/tb-gcp-bootstrap//modules"
}

inputs = {
  project_id  = get_env("project_id")
  folder_id   = get_env("folder_id")
  region      = get_env("region")
  billing_id  = get_env("billing_id")
}

remote_state {
  backend = "gcs"
  config  = {
    bucket   = get_env("TF_VAR_STATE_BUCKET_NAME")
    prefix   = "bootstrap/${path_relative_to_include()}/terraform.tfstate"
    project  = get_env("TF_VAR_PROJECT_ID")
    location = get_env("TF_VAR_REGION")

    enable_bucket_policy_only = true
    gcs_bucket_labels = {
      activator_type = "tbbootstrap"
      environment    = "development"
      terraform      = "true"
    }
  }
}
