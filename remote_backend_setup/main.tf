provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-aws_instance" {
 
  ami = "ami-005fc0f236362e99f"
  instance_type = "t2.micro"
}

# remote state file used s3 
resource "aws_s3_bucket" "s3_bucket" {
bucket = "harsh-s3-demo-file"
}
# dynamodb lock mechanism  
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}