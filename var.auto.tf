variable "aws_region" {
  default = "us-east-2"
  type    = string
}


variable "aws_secret_access_key" {

}

variable "aws_access_key_id" {
}


variable "ak-dado-til-mudu-ose" {
  default =  "ak-dado-til-mudu-ose-bucket"
  
}



variable "subnet_ids" {
  default = "subnet-ea5c0ea6"
}

variable "vpc_id" {
  default = "vpc-b55ecbde"

}

variable "instance_count" {
  default = "1"
}

variable "type" {
  default = "t2.micro"
}

variable "key_pair" {
  default = "Terra"
}

variable "security_groups" {
  default = "sg-0f07a9941ea7c2acb"
}




