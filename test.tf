# provider.tf
provider "aws" {
  region = "ap-south-1"  # Mumbai region
}

# main.tf
resource "aws_instance" "web_server" {
  ami           = "ami-0e6329e222e662a52"  # Example Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "MyWebServer"
  }
}
