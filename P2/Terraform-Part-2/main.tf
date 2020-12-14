# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"
}

data "aws_vpc" "my_vpc" {
    id = "vpc-4c418d31"
}

resource "aws_instance" "udacity_lambda_ec2" {
    ami = "ami-04d29b6f966df1537"
    instance_type = "t2.micro"
    vpc_security_group_ids=["sg-67249857"]
    subnet_id="subnet-984d0ed5"
    tags = {
        Name = "Udacity Lambda EC2"
    }
}

resource "aws_s3_bucket" "udacity_lambda_bucket"{
    bucket = var.bucket_name
    tags = {
        Name = "My-Lambda-Udacity-Bucket"
    }
}

resource "aws_lambda_function" "udacity_lambda" {
    filename = var.lambda_file_name
    function_name = var.lambda_function_name
    role          = var.lambda_role_arn
    handler       = "greet_lambda.lambda_handler"
    runtime = "python3.7"
}