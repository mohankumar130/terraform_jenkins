output "instance_id" {
  value = aws_instance.dev_instance.id
}

output "public_ip" {
  value = aws_instance.dev_instance.public_ip
}
