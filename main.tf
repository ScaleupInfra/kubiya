resource "aws_instance" "kubiya-instance" {
     ami = "ami-0fc5d935ebf8bc3bc"
     instance_type = "t2.medium"
     count = 5
     tags = {
       Name = "kubiya-instance-${count.index}"
     }
}
resource "aws_s3_bucket" "kubiya-bucket" {
  bucket = "kubiya-122312-test-bucket"
  tags = {
    Name        = "kubiya test bucket"
    Environment = "test"
  }
}
