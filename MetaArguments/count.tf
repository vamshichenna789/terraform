resource "aws_instance" "web" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.vamshi_public_subnet.id
  key_name      = "firstkey"
  count         = 3
  tags = {
    Name = "vamshi-public- ${ count.index }"
  }
}
resource "aws_instance" "web1" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.vamshi_private_subnet.id
  key_name      = "firstkey"
  count         = 2
  tags = {
    Name = "vamshi-private-${count.index}"
  }
}

