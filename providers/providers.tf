provider "aws" {

    region = "ap-northeast-1"
    
}
provider "aws" {

    region = "us-east-1"
    alias = "west"
    
}
provider "github" {

    token = ""      #<--enter github PAT
  
}