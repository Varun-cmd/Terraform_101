resource "aws_instance" "web" {

  ami           = var.os
  instance_type = var.size
  provider = aws.tokyo

  tags = {
    Name = "terra-1"
  }
}

# variable "os" {
#   type = string
#   default = "ami-0947c48ae0aaf6781"
#   description = "This is my ami ID"
#   sensitive = true 
# }

# variable "size" {
#     type = string
#     default = "t2.micro"
  
# }



#  <-- s3 bucket creation 
resource "aws_s3_bucket" "name" {
  bucket = var.bucketaname

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_iam_user" "myuser" {
  name = "${var.username}-user"             #<-- syntax to import variables from either prod.tfvars or staging.tfvars
}