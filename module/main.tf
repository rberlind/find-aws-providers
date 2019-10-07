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
