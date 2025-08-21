variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "key_name" {
  type        = string
  description = "Name of the existing EC2 Key Pair"
}