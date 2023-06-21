resource "aws_instance" "AWSServer" {
  count           = var.instance_count
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "yogesh_key"
  security_groups = ["allow-all"]
  tags = {
    Name = "EC2-server-${count.index}"
  }
}
