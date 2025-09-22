variable "aws_region" { default = "us-east-1" }
variable "instance_type" { default = "t3.micro" }
variable "key_name" { default = "ecom-key" }
variable "public_key_path" { default = "~/.ssh/id_rsa.pub" }
variable "my_ip_cidr" { default = "0.0.0.0/0" }
variable "dockerhub_user" { default = "DOCKERHUB_USERNAME" }
variable "image_tag" { default = "latest" }
