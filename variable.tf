variable "instance_name" {
  type = string
  default = "instance_jenkins_server_antonio"
  description = "Instance name"
}

variable "region" {
  type = string
  description = "AWS region"
  default = "eu-west-3"
}

variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t2.micro"
}

variable "key_name" {
  type = string
  default = "tp_dev_ynov"
}

variable "instance_number" {
  type = number
  description = "Instance number"
  default = 1
}

variable "create_instance" {
  type = bool
  description = "Create instance or not"
  default = true
}

variable "security_instance_name" {
  type = string
  default = "instance_terraform_antonio"
}

