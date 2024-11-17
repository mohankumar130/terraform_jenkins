variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched"
  type        = string
}

variable "key_name" {
  description = "The key pair name to access the instance"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the instance"
  type        = string
}
