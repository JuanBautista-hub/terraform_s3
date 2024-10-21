
provider "aws" {
  access_key = var.acces_key
  secret_key = var.secret_key
  region     = var.region_aws
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.random.id

  tags = {
    Name        = var.tags_name
    Environment = var.tags_Enviroment
  }
}

