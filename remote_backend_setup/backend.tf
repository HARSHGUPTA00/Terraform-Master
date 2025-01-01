terraform {
  backend "s3" {
    bucket = "harsh-s3-demo-file" #bucket name provider 
    region = "us-east-1"
    key = "harsh/terraform.tfstate" #path inside bucket
 #dynamodb_table = "terraform_lock"
  }
}