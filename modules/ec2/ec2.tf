resource "aws_instance" "example" {
    ami = var.ami_id
    instance_type = var.instance_type
    associate_public_ip_address = var.associate_public_ip_address
    key_name = var.key_name
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    user_data = var.user_data
    ebs_optimized = var.ebs_optimized
    private_ip = var.private_ip
    disable_api_termination = var.disable_api_termination
}