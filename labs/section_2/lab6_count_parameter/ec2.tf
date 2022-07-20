resource "aws_instance" "lab6-tf-ec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    count = 3
}