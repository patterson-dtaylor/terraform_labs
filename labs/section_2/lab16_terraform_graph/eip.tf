resource "aws_eip" "lb" {
  instance = aws_instance.lab16-ec2
  vpc = true
}