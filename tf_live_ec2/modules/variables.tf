variable "ec2_test" {
  description = "EC2 instance configuration for testing"
  type = object({
    instance_count     = number
    instance_type      = string
    ami                = string
    key_name           = optional(string, null)
    subnet_id          = optional(string, null)
    vpc_security_group_ids = optional(list(string), null)
    user_data          = string
    private_ip         = optional(string, null)
  })
  
}