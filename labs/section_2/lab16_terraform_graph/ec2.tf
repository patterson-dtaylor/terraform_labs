resource "aws_instance" "lab16-ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}