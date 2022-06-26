
output "Instance_IP1" {
  description = "EC2 instance ID"
  value       = aws_instance.ctg_test_terraformtest.*.private_ip
}


output "Instance_ID" {
  description = "EC2 instance ID"
  value       = aws_instance.ctg_test_terraformtest.*.id
}

# output "Public_DNS" {
#   description = " Get the public dns from terraform run"
#   value =  aws_instance.ctg_test_terraformtest[count.index].public_dns
  
# }



output "Eb_volume" {
  description = " Eb volume ID"
  value = aws_ebs_volume.ctg_eb_volume.id
  
}

output "Eb_volume_arn" {
description = " get eb volume arn"
value = aws_ebs_volume.ctg_eb_volume.arn  
  
}

output "get_bucket_arn" {
  description = "get the ARN of the associated bucket"
  value = aws_s3_bucket.new_bucket_creation_for_dev.arn
  
}