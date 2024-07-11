variable "server_port" {
  description = "The port the server will listen on"
  type        = number
  default     = 8080
}

output "public_ip" {
  value       = aws_lb.example.dns_name
  description = "The public IP of the load balancer"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
