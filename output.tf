output "server-ip" {
  value = aws_instance.web2.public_ip
}