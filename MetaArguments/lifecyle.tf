resource "aws_instance" "test-name" {
  ami             = "ami-052efd3df9dad4825"
  instance_type   = "t2.micro"
  security_groups = ["launch-wizard-2"]
  key_name        = "firstkey"
  lifecycle {
     create_before_destroy = true
     prevent_destroy =true
  }
  root_block_device {
    volume_size = "20"
  }
  tags = {
    name = "vamshi"
  }
}
