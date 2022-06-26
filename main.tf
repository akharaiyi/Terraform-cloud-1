data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners      = ["830437143554"]
  filter {
    name   = "name"
    values = ["ami-ubuntu-16.04-*"]
  }
}

resource "aws_ebs_volume" "ctg_eb_volume" {
  availability_zone = "us-east-2a"
  size = 40
  tags= {
    Name = "test_eb"
  }
  
}


resource "aws_s3_bucket" "new_bucket_creation_for_dev" {
  bucket = var.ak-dado-til-mudu-ose

  tags ={
    Name = "Dev"
  }

}

resource "aws_instance" "ctg_test_terraformtest" {
  count           = var.instance_count
  ami             = data.aws_ami.latest-ubuntu.id
  instance_type   = var.type
  key_name        = var.key_pair
  subnet_id       = var.subnet_ids
  security_groups = [var.security_groups]
  tags = {
    Name          = "ctg_test_terraformtest"
    ctg-test      = "ctg-devops-test"
    applicationID = "SD78920"
  }

}
