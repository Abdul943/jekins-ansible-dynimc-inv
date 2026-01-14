provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "AWSEC2Instance" {
  ami             = "ami-07ff62358b87c7116"
  instance_type   = "t2.micro"
  key_name        = "abdul.pem"
  security_groups = ["launch-wizard-7"]

  tags = {
    Name = "TerraformServer"
  }
}
