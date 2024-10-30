
resource "aws_instance" "web2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.tf-key.key_name

  tags = {
    Name = "server"
  }
}

resource "aws_s3_bucket" "aws_bucket" {
  bucket = "pawan-bucket-demo"

  tags = {
    Name        = "My bucket"
    
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.aws_bucket.id
  key    = "data.txt"
  source = "./data.txt"
}