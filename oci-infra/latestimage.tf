data "oci_core_images" "latest_image" {
  compartment_id = var.compartment_id
  operating_system = "Oracle Linux"
  operating_system_version = "8"
  filter {
    name   = "display_name"
    values = ["^.*aarch64-.*$"]
    regex = true
  }
}
output "oracle-linux-latest-name" {
  value = data.oci_core_images.latest_image.images.0.display_name
}
output "oracle-linux-latest-id" {
  value = data.oci_core_images.latest_image.images.0.id
}