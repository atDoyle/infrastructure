provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_redshift_cluster" "default" {
  cluster_identifier = "tf-redshift-cluster"
  database_name      = "datawarehouse"
  master_username    = "foo"
  master_password    = "bAr12345"
  node_type          = "dc1.large"
  cluster_type       = "single-node"
}