variable "instance_type" {
    default = "t2.micro"
}
variable "ami" {
    default = "ami-026dea5602e368e96"
}


resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "Hashicop"
    }
}
