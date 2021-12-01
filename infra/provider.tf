terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.56.0"
    }
  }
  backend "s3" {
      bucket = "pgr301-haha028-terraform"
      key    = "hkonn/terraform_haha028.state"
      region = "eu-west-1"
    }
}

resource "aws_ecr_repository" "ecr" {
  name = "haha028"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
 }

    tags = {
        name = "ecr"
    }
}