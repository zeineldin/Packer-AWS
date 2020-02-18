provider "aws" {
  
 # access_key = "${var.aws_access_key}"
 # secret_key = "${var.aws_secret_key}"
 # AWS Credentials with a file 
  shared_credentials_file = "~/.aws/credentials"
  region     = "eu-west-1"
}

resource "aws_instance" "Built-with-terraform" {
  ami           = "${var.AMI_ID}"
  instance_type = "t2.micro"
tags {
    "Name" = "packer-terraform-instance"
  }


}
