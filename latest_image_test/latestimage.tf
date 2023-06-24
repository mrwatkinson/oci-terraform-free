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

data "oci_containerengine_node_pool_option" "test_node_pool_option" {
    #Required
    image_id = oci_containerengine_node_pool_option.test_node_pool_option.image_id

    #Optional
    compartment_id = var.compartment_id
  filter {
    name   = "display_name"
    values = ["^.*aarch64-.*$"]
    regex = true
  }
}

output "test-oke-source"{
    value = data.oci_containerengine_node_pool_option.test_node_pool_option.sources.0.image_id
}
