resource "aws_vpc" "myfirsttfvpc" {
    cidr_block = "192.168.0.0/24"
    
    tags = {
        name = "MyTerraformVPC"
    }
}

output "VPCID" {
  value = "${aws_vpc.myfirsttfvpc.id}"
}


