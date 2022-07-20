resource "aws_instance" "ec2-example" {
    ami           = lookup(var.AMIS, var.AWS_REGION)
    instance_type = "t2.micro"

    tags = {
        Name = "ec2-example"
    } 
}
