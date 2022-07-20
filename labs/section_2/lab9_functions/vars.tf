variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  type        = list
  default     = ["first-ec2", "second-ec2"]
}

variable "ami" {
  type        = map
  default     = {
    "us-east-1" = "ami-0cff7528ff583bf9a"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}