resource "aws_instance" "example" {
  ami           = data.aws_ami.aml2_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
