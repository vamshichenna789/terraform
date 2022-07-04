resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vamshi_vpc.id

  tags = {
    Name = "my-vpc-igw"
  }
}
