resource "aws_iam_user" "lb" {
    name = var.iam_users[count.index]
    count = 3
    path = "/system/"
}