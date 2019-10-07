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

module "first" {
  source = "./module"
}
