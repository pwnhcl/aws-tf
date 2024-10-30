resource "random_id" "rand_id" {
  byte_length = 8
}


resource "aws_s3_bucket" "aws_bucket" {
  bucket = "pawan-bucket-${random_id.rand_id.hex}"

  tags = {
    Name        = "My bucket"
    
  }
}