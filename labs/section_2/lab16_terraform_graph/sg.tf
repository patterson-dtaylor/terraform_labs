resource "aws_security_group" "allow_tls" {
  name = "allow_tls"

  ingress = {
    cidr_blocks = ["${aws_eip.lb.private_ip}/32"]
    description = "allow_tls"
    from_port = 443
    to_port = 443
    protocol = "tcp"
  }
}