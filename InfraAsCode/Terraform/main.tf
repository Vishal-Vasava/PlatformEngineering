# Configure the AWS provider
provider "aws" {
  region     = "ap-south-1"
  access_key = "your-access-key"
  secret_key = "your-secret-key"
}

resource "aws_instance" "T2M" {
    ami = "ami-0d13e3e640877b0b9"
    instance_type = "t2.micro"
    
    tags = {
        Name = "t2.micro ec2-created-from-terraform"
    }
}


}