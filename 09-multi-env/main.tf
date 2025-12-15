terraform {
  backend "s3" {}

}
  resource "null_resource" "test" {}

  output "test" {

    value = var.test
  }
  }

