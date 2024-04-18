
resource "google_container_cluster" "primary" {
  project  = var.project_id
  name     = "${var.cluster_name}-gke"
  location = var.region

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  node_locations = [
    var.zone
  ]

  # UNIQUE TO THIS EXAMPLE
  resource_labels = {
    env       = "${var.project_id}-production"
    team      = "orcestra"
    component = "snakemake-orchestration"
  }

}

resource "google_container_node_pool" "default" {
  project        = var.project_id
  name           = "${var.cluster_name}-gke-node-pool"
  cluster        = google_container_cluster.primary.name
  node_locations = [var.zone]

  node_config {
    image_type   = "ubuntu_containerd"
    machine_type = var.gke_machine_type


    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    tags = ["gke-node", "${var.project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }

  autoscaling {
    min_node_count = 0
    max_node_count = 10

  }

}