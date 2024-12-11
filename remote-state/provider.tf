terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.66.0"
    }
  }
   backend "s3" {
    bucket = "daws23d-remote-state"
    key = "ravi_state_key"
    region = "us-east-1"
    dynamodb_table = "daws23d-locking"
     
   }
}
provider "aws" {
    region = "us-east-1"
  
}