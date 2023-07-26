


resource "aws_instance" "web" {

  ami           = "ami-0947c48ae0aaf6781"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


# Instance creation using alias 
resource "aws_instance" "web" {

  ami           = "ami-0947c48ae0aaf6781"
  instance_type = "t2.micro"
  provider = aws.east   #       <-- alias here ! 

  tags = {
    Name = "HelloWorld"
  }
}



# GitHub repo creation 
resource "github_repository" "example" {
  name        = "Terraform_101"
  description = "This repo is created using terraform!"

  visibility = "public"


}