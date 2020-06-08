resource "aws_instance" "DB_sever" {
    ami = "ami-0f7919c33c90f5b58"
    instance_type = "t2.micro"
    
    tags = {
        Name = "DB"
    }
}

resource "aws_instance" "web_server" {
    ami = "ami-0f7919c33c90f5b58"
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.SG.name}"]
    user_data = "${file("start_script.sh")}"

    tags = {
        Name = "Web server"
    }
}

resource "aws_eip" "public_address" {
  instance = "${aws_instance.web_server.id}"
}

output "elasticip" {
  value = "${aws_eip.public_address.public_ip}"
}

output "db_ip" {
  value = "${aws_instance.DB_sever.private_ip}"
}



resource "aws_security_group" "SG" {
    name = "SG"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 443 
        to_port = 443 
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

}


