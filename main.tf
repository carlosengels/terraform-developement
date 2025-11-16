provider "aws" {
  region  = "s-west-2"
  profile = "personal"
}

resource "random_string" "random" {
  length           = 20
  special          = true
  override_special = "/@£$"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "tf-managed-bucket-${random_string.random}"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}