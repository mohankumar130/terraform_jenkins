data "aws_ami" "aml2_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["Amazon Linux 2023 AMI*"]
  }
}
data "aws_ami" "nat_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn-ami-vpc-nat*"]
  }
}