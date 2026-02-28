include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_repo_root()}//tf_live_ec2/modules"
}

inputs = {
  ec2_test = {
    instance_count     = 2
    instance_type      = "t2.micro"
    ami                = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI (HVM), SSD Volume Type
    user_data          = <<-EOF
                          #!/bin/bash
                          echo "Hello, World!" > /var/www/html/index.html
                          EOF
  }
}