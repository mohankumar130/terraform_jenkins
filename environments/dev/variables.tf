variable "ami_id" {
  description = "AMI ID for the compute instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the compute instance"
  type        = string
}

variable "key_name" {
  description = "Key pair for SSH access"
  type        = string
}
