terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.15.0"
    }
  }
}

provider "google" {
  # Configuration options
}

resource "google_storage_bucket" "static-site" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}

resource "google_project_iam_binding" "sample_iam_binding" {
  project = "devops-sandbox-20200519"
  role    = "roles/viewer"

  members = [
    "user:vishal.kapse@abc.com"
  ]
}