/* 
    Terraform State Configuration
    Develop By: William MR
*/

terraform { 
    backend "s3" {
        bucket          = "tf-states.cloud-nation.net"
        key             = "terraform-aws-eks-postgres/state"
        region          = "us-east-1"
        dynamodb_table  = "tf-states.cloud-nation.net"
        encrypt         = true
    }
}
