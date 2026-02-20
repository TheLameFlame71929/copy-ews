# output "name" {
#     description = "Name of the EC2 instance"
#     value       = aws_instance.example
# }

output "id" {
    description = "ID of the EC2 instance"
    value       = aws_instance.example.id
}

output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.example.public_ip
}

output "private_ip" {
    description = "Private IP address of the EC2 instance"
    value       = aws_instance.example.private_ip
}

output "arn" {
    description = "ARN of the EC2 instance"
    value       = aws_instance.example.arn
}

