# backend.hcl
bucket          = "terraform.hachiko.app"
region          = "us-east-1"
dynamodb_table  = "terraform-state-01"
encrypt         = true