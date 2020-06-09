## provider configuration ##

provider "aws" {
  region     = "eu-central-1"
  version = "~> 2.2"

}

## configuring remote backend ##

terraform {
  backend "s3" {
    bucket = "terraform-bucket-aditya"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}

## Two ec2 instance resource ##

resource "aws_instance" "web" {
  ami           = var.AMIid
  instance_type = var.instancetype
  availability_zone = var.az
  user_data = "${file("webscript.sh")}"

  tags= {
    Name= "WEBinstance1"
  }
}

resource "aws_instance" "secondweb" {
  ami           = var.AMIid
  instance_type = var.instancetype
  availability_zone = var.az
  user_data = "${file("webscript.sh")}"

  tags= {
    Name= "WEBinstance23"
  }
}
