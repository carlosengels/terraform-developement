output "s3-name" {
    description = "Name of the S3 bucket"
    value = module.s3_bucket.s3_directory_bucket_name
}