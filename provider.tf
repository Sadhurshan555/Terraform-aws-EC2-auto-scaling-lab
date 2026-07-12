provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Terraform AWS Auto Scaling Lab"
      Environment = "Lab"
      ManagedBy   = "Terraform"
    }
  }
}