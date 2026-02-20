variable "ami_id" {
    description = "AMI id to use for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t3.micro"
}

variable "key_name" {
    description = "Name of the SSH key pair to attach"
    type        = string
    default     = null
}

variable "subnet_id" {
    description = "Subnet ID to launch the instance in"
    type        = string
    default     = null
}

variable "vpc_security_group_ids" {
    description = "List of security group IDs to associate"
    type        = list(string)
    default     = []
}

variable "associate_public_ip_address" {
    description = "Whether to associate a public IP"
    type        = bool
    default     = false
}

variable "private_ip" {
    description = "Optional private IP to assign to the instance"
    type        = string
    default     = null
}

variable "iam_instance_profile" {
    description = "IAM instance profile name or ARN"
    type        = string
    default     = null
}

variable "user_data" {
    description = "User data script to run on instance launch"
    type        = string
    default     = null
}

variable "ebs_optimized" {
    description = "Whether the instance should be EBS optimized"
    type        = bool
    default     = false
}

variable "disable_api_termination" {
    description = "Whether to disable API termination of the instance"
    type        = bool
    default     = false
}