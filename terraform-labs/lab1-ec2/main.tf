# Provider (region can be changed if needed)
provider "aws" {
  region = "us-east-1"
}

# EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-07860a2d7eb515d9a"  
  instance_type = "t3.micro"
  key_name      = "terraform_user"         

  tags = {
    Name = "lab6-ec2"
  }
}
