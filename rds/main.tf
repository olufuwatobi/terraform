resource "aws_db_instance" "myrds" {
  name  = "myfirst_rds"
  identifier = "rds-instance"
  instance_class = "db.t2.micro"
  engine = "mariadb"
  engine_version = "10.2.21"
  username = "tobi"
  password = "Password123"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = "true"

}
