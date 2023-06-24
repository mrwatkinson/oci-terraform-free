provider "oci" {
  region = var.region
}

terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.1.0"
    }
  }
}


data "oci_containerengine_node_pool_option" "latest_image" {
  compartment_id = var.compartment_id
  node_pool_option_id = "all"

#  operating_system = "Oracle Linux"
#  operating_system_version = "9.2"
#  filter {
#    name   = "display_name"
#    values = ["^.*aarch64-.*$"]
#    regex = true
#    }
}

#output "k8s-image-list" {
#  value = data.oci_containerengine_cluster.latest_image.0.id
#}