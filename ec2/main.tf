resource "aws_instance" "mytfinstance" {
  ami = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

  tags = {
      Name = "myinstance"
  }
}
