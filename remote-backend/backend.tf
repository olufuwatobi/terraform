terraform {
    backend "s3" {
        bucket = "bitoler"
        key = "terraform/tfstate.tfstate"
        region = "us-east-2"
    }
}