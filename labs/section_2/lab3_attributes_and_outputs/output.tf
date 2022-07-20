output "eip_public_ip" {
    value = aws_eip.lb.public_ip
}

output "lab3_bucket_domain" {
    value = aws_s3_bucket.mys3.bucket_domain_name
}