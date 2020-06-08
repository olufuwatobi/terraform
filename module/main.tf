resource "aws_iam_user" "mainuser" {
    name = "mainuser"
}

module "ec2module" {
  source = "./ec2"
  
  ec2_module = "My Terraform Module"
}
