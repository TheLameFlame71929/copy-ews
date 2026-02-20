module "ec2" {
  source = "C:\\Users\\AliKh\\CodingProjects\\My-Rojects\\copy-ews\\modules\\ec2"

  count = var.ec2_test.instance_count

  instance_type   = var.ec2_test.instance_type
  ami_id           = var.ec2_test.ami
  key_name      = var.ec2_test.key_name
  subnet_id     = var.ec2_test.subnet_id
  vpc_security_group_ids = var.ec2_test.vpc_security_group_ids
  user_data     = var.ec2_test.user_data
}                                                                           