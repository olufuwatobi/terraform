resource "aws_instance" "sg" {
    ami = "ami-0f7919c33c90f5b58"
    instance_type = "t2.micro"
    //security_groups = ["${aws_security_group.allow_https.name}"]
    tags = {
        Name = "Securiy Group"
    }
}

resource "aws_security_group" "allow_https" {
    name = "terraform_sg"
    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


