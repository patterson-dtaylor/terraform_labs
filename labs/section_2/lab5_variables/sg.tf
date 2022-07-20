resource "aws_security_group" "tf_lab5_sg" {
  name        = "tf_lab4_s5_allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPN"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    description      = "TLS from VPN"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    description      = "TLS from VPN"
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }
}