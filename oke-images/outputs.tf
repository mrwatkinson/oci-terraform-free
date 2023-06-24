output "k8s-image_id" {
  value = data.oci_containerengine_node_pool_option.latest_image.sources.0.image_id
}
