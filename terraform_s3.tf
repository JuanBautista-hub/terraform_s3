
provider "aws" {
  access_key = var.acces_key
  secret_key = var.secret_key
  region     = var.region_aws
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.random.id

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


variable "acces_key" {
  //enter console variable
}

variable "secret_key" {
  //enter console variable
}

variable "region_aws" {
  //enter console variable
}
