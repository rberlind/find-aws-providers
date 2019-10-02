/*provider "aws" {
  region     = "us-east-2"
}*/

provider "aws" {
  region     = "us-east-1"
  alias = "first-east"
}

provider "aws" {
  region     = "us-west-1"
  alias = "first-west"
}

resource "aws_instance" "web" {
  provider = "aws.first-east"
  ami           = "ami-2e1ef954"
  instance_type = "t2.micro"

  tags = {
    Name = "first module instance"
  }
}

module "second" {
  source = "./module"
}
