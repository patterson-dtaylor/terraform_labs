variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}
variable "AMIS" {
    type = map(string)
    default = {
      "us-east-1" = "ami-0cff7528ff583bf9a"
      "us-east-2" = "ami-02d1e544b84bf7502"
    }
}