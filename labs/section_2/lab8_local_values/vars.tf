variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}

locals {
    common_tags = {
        Owner = "DevOps Team"
        service = "backend"
    }
}