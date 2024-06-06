provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

module "us_east_1" {
  source = "./modules/ec2_instance"
  providers = {
    aws = aws.us-east-1
  }
  region = "us-east-1"
}

module "us_east_2" {
  source = "./modules/ec2_instance"
  providers = {
    aws = aws.us-east-2
  }
  region = "us-east-2"
}
