variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}
variable "AMIS" {
    default = "ami-0cff7528ff583bf9a"
}

variable "GITHUB_TOKEN" {}