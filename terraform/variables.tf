variable "domain_name" {
  description = "The custom domain name for the website (e.g., cloudburstit.com)"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to create resources in (e.g., us-east-1, eu-west-1)"
  type        = string
  default     = "us-east-1"
}