resource "aws_instance" "AWSServer" {
  ami             = "ami-0bb6af715826253bf"
  instance_type   = "t2.micro"
  key_name        = "yogesh_key"
  security_groups = ["allow-all"]
  tags = {
    Name = "tf-sample-ec2"
  }
}
