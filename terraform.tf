
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "pawan-bucket-2150e100f4a60134"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
