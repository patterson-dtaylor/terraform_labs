resource "aws_instance" "lab12-ec2-1" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}

resource "aws_instance" "lab12-ec2-2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}