/*provider "aws" {
  region     = "us-east-2"
}*/

provider "aws" {
  region     = "us-east-1"
  alias = "root-east"
}

provider "aws" {
  region     = "us-west-1"
  alias = "root-west"
}

resource "aws_instance" "web" {
  provider = "aws.root-east"
  ami           = "ami-2e1ef954"
  instance_type = "t2.micro"

  tags = {
    Name = "root module instance"
  }
}

module "first" {
  source = "./module"
}
