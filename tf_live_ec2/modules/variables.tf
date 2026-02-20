variable "ec2_test" {
  description = "EC2 instance configuration for testing"
  type = object({
    instance_count     = number
    instance_type      = string
    ami                = string
    key_name           = string
    subnet_id          = string
    vpc_security_group_ids = list(string)
    user_data          = string
  })
  
}