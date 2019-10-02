/*provider "aws" {
  region     = "us-east-2"
}*/

provider "aws" {
  region     = "us-east-1"
  alias = "second-east"
}

provider "aws" {
  region     = "us-west-1"
  alias = "second-west"
}

resource "aws_instance" "web" {
  provider = "aws.second-east"
  ami           = "ami-2e1ef954"
  instance_type = "t2.micro"

  tags = {
    Name = "second module instance"
  }
}
