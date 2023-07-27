module "vpc" {
  source        = "./vendor/modules/vpc" 
  VPC_CIDR      = var.VPC_CIDR

tags = {
    Name = "roboshop-vpc"
  }

}