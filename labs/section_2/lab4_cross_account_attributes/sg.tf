resource "aws_security_group" "tf_lab4_sg" {
  name        = "tf_lab4_sg_allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from EIP"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.tf_lab4_lb.public_ip}/32"]
  }
}