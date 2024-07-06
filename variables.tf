variable "server_port" {
  description = "The port the server will listen on"
  type        = number
  default     = 8080
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "value of the public IP of the EC2 instance"
}
