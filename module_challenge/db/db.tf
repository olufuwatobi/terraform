

resource "aws_instance" "dbinstance" {
    ami = "ami-0f7919c33c90f5b58"
    instance_type = "t2.micro"

    tags = {
        name = "dbinst"
    }
}