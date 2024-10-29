resource "aws_key_pair" "tf-key" {
  key_name   = "terra_aws_key"
  public_key = file("${path.module}/id_rsa.pub")
}