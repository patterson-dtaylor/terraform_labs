resource "aws_security_group" "demo_sg" {
  name        = "dynamic-sg"
  description = "Ingresss for Vault"

  dynamic "ingress" {
    #function for setting values in the block
    for_each = var.ingress_ports
    #if you want to name the iterator something else:
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.egress_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}