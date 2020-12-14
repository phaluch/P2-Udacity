# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"
}

data "aws_vpc" "my_vpc" {
    id = "vpc-4c418d31"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2s" {
    ami = "ami-04d29b6f966df1537"
    instance_type = "t2.micro"
    vpc_security_group_ids=["sg-67249857"]
    subnet_id="subnet-984d0ed5"
    tags = {
        Name = "Udacity T2"
    }
    count = 4
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "UdacityM4s" {
    ami = "ami-04d29b6f966df1537"
    instance_type = "m4.large"
    vpc_security_group_ids=["sg-67249857"]
    subnet_id="subnet-984d0ed5"
    tags = {
        Name = "Udacity M4"
    }
    count = 2
}
