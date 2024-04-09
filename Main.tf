locals {
  environment = "MyTerraformEC2New"
}

resource "aws_instance" "example" {
  ami = data.aws_ami.ec2ami.id
  instance_type = var.instance_type
  tags = {
    Name = local.environment
}
}
 
provider "aws" {
  region = "ap-south-2"
}

terraform {
  backend "s3" {
    bucket = "terraformbucketpavan"
    key = "terraform.tfstate"
    region = "ap-south-2"
    
  }
}
