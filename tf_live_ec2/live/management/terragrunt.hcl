generate "s3-backend" {
    path = "terraform.tf"
    if_exists = "overwrite"
    contents = <<EOF
terraform {
  backend "s3" {}
}
EOF
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "my-terraform-state-bucket-71929"
    key            = "management/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}