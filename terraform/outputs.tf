output "instance_public_ip" {
  value = aws_instance.web_server.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.storage.bucket
}
