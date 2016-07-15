variable "vpc_id" {
	default = "vpc-0ae44d6d"
}

variable "subnet_id" {
	default = "subnet-dc386cf6"
}

variable "aws_key_pair" {
	default = "arun_rean_trainee"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "security_group" {
	type = "string"
	description = "describe your variable"
	default = ""
}

variable "source_ami" {
	default = "ami-fce3c696"
}

variable "az" {
	type = "string"
	description = "describe your variable"
	default = "us-east-1"
}

variable "volume_type" {
	type = "string"
	description = "describe your variable"
	default = "standard"
}

variable "name_tag" {
	type = "string"
	description = "describe your variable"
	default = "terraform_build_jenkins_server"
}

variable "owner_tag" {
	type = "string"
	description = "describe your variable"
	default = "arun.sanna@reancloud.com"
}

variable "service_tag" {
	type = "string"
	description = "describe your variable"
	default = "jenkins_server"
}

variable "expiration_tag" {
	type = "string"
	description = "describe your variable"
	default = "12-31-2016"
}

variable "iam_role" {
	type = "string"
	description = "describe your variable"
	default = "s3accesstoec2"
}