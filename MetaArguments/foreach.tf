resource "aws_instance" "test-name" {
  ami             = "ami-0cff7528ff583bf9a"
  instance_type   = each.key
  security_groups = ["launch-wizard-2"]
  key_name        = "firstkey"
  for_each        = toset(["t2.micro", "t2.small"])
  root_block_device {
    volume_size = "20"
  }
  tags = {
    name = "vamshi"
  }
}
