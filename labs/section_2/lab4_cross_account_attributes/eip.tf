resource "aws_eip" "tf_lab4_lb" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.tf_lab4_ec2.id
  allocation_id = aws_eip.tf_lab4_lb.id
}