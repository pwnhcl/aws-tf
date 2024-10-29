
resource "aws_instance" "web2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.tf-key.key_name

  tags = {
    Name = "server"
  }
}