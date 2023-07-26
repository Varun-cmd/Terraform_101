provider "aws" {

    region = "ap-northeast-1"
    alias = "tokyo"
    
}
provider "aws" {

    region = "us-east-1"
    alias = "west"
    
}
provider "github" {

    token = "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"
  
}