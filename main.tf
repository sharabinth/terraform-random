provider "random" {}

resource "random_integer" "value" {
  min = "${var.min_val}"
  max = "${var.max_val}"
}

resource "null_resource" "random_value" {
  provisioner "local-exec" {
    command = "echo Random Integer is: ${random_integer.value.result}"
  }
}
