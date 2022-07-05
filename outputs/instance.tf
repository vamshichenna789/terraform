resource "aws_instance" "web" {
  ami                         = var.ami_name //ami-0c2b8ca1dad447f8a
  instance_type               = var.inst_type
  count                       = var.inst_count
  availability_zone           = var.az_name
  key_name                    = "firstkey"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]

  tags = {
    Name = "vamshi"
  }
}
