output "instance_id" {
  description = "The ID of the compute instance"
  value       = aws_instance.compute_instance.id
}

output "public_ip" {
  description = "The public IP of the compute instance"
  value       = aws_instance.compute_instance.public_ip
}
