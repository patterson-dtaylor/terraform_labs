resource "aws_instance" "app-dev" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "db-dev" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_ebs_volume" "db-_ebs" {
    availability_zone = "us-east-1a"
    size = 8
    tags = local.common_tags
}