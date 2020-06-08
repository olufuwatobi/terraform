variable "ec2_module" {
  type = "string"
}

resource "aws_instance" "module_instance" {
  ami = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

  tags = {
      Name = "${var.ec2_module}"
  }
}
