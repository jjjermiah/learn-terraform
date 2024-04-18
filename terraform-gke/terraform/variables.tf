variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP Region"
  default     = "northamerica-northeast2"
}

variable "zone" {
  description = "GCP Zone"
  default     = "northamerica-northeast2-a"
}

variable "cluster_name" {
  description = "GKE Cluster Name"
}

variable "gke_num_nodes" {
  description = "Number of GKE Nodes"
}

variable "gke_machine_type" {
  description = "GKE Machine Type"
}

