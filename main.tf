resource "aws_instance" "demo-instance" {
     ami = "ami-0fc5d935ebf8bc3bc"
     instance_type = "t2.medium"
     count = 5
     tags = {
       Name = "demo-instance-${count.index}"
     }
}
resource "aws_s3_bucket" "demo-bucket" {
  bucket = "demo-122312-test-bucket"
  tags = {
    Name        = "Demo test bucket"
    Environment = "test"
  }
}