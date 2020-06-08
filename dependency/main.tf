resource "aws_instance" "web_server" {
  ami = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

  tags = {
      Name = "Web Server"
  }
  depends_on = ["aws_instance.de_server"]

}

resource "aws_instance" "de_server" {
  ami = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

  tags = {  
      Name = "DB Server"
  }
}

