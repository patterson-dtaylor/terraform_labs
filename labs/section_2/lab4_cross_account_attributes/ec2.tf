resource "aws_instance" "tf_lab4_ec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
}