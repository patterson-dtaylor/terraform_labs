output "arns" {
  value = aws_iam_user.lb[*].arn
}

output "name" {
  value = aws_iam_user.lb[*].name
}

output "zipped" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}