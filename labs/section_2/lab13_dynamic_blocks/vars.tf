variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    type = string
    default = "us-east-1"
}

variable "ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8200, 8201, 8300, 9200, 9500]
}

variable "egress_ports" {
  type        = list(number)
  description = "list of engress ports"
  default     = [8100, 8101, 8400, 9300, 9600]
}