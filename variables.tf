variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "ami_id" {}
variable "key_name" {}
variable "region_id" {}

variable "vpc_security_group_ids" {
  type = "list"
}

variable "ssh_username" {}
variable "aws_arn" {}
