data "aws_ami" "aml2_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["al2023-ami-2023.6*"]
  }
}