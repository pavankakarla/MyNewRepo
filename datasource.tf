data "aws_ami" "ec2ami" {

    most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-kernel-5.1*"]
  }
  
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
}