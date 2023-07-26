variable "bucketaname" {

}

variable "size"{
    default = "t1.micro"
} 

variable "os" {
  type = string 
  default = "ami-0947c48ae0aaf6781"
  description = "This is my AMI ID" 
}
