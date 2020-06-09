## provider configuration ##

provider "aws" {
  region     = "eu-central-1"
}

## configuring remote backend ##

terraform {
  backend "s3" {
    bucket = "terraform-bucket-aditya"
    key    = "terraform"
    region = "eu-central-1"
  }
}

## An ec2 instance resource ##

resource "aws_instance" "web" {
  ami           = "ami-0a02ee601d742e89f"
  instance_type = "t2.micro"
  availability_zone = "eu-central-1a"
  user_data = "${file("webscript.sh")}"

  tags= {
    Name= "web instance"
  }
}
