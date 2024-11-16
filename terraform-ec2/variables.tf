variable "aws_region" {
  description = "AWS region to launch the EC2 instance"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  default     = "t2.micro"
}
