provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "12.1"
  instance_class       = "db.t2.micro"
  name                 = "exampledb"
  username             = "foo"
  password             = "foobarbaz"
}