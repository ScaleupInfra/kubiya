resource "aws_instance" "env0-instance" {
     ami = "ami-0fc5d935ebf8bc3bc"
     instance_type = "t2.medium"
     count = 5
     tags = {
       Name = "env0-instance-${count.index}"
     }
}
resource "aws_s3_bucket" "env0-bucket" {
  bucket = "env0-122312-test-bucket"
  tags = {
    Name        = "env0 test bucket"
    Environment = "test"
  }
}