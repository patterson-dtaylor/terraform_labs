variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}

variable "vpn_ip" {
  type        = string
  default     = "160.54.67.90/32"
}

variable "elb_name" {
    type = string
}

variable "az" {
    type = list
}

variable "timeout" {
    type = number
}

variable "lb_port" {
    type = list
    default = [80, 443, 8080]
}

variable "elb_tags" {
    type = map
    default = {
        sandbox = "tf-sandbox-elb"
        dev = "tf-dev-elb"
        prod = "tf-prod-elb"
    }
}