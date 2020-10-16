/* 
    Terraform State Configuration
    Develop By: William MR
*/

terraform { 
    backend "s3" {
        key             = "terraform-aws-eks-postgres/state"
    }
}
