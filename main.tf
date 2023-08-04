module "vpc" {
source                      = "./vendor/modules/vpc" 
VPC_CIDR                    = var.VPC_CIDR
ENV                         = var.ENV
AZ                          = var.AZ
PUBLIC_SUBNET_CIDR          = var.PUBLIC_SUBNET_CIDR
PRIVATE_SUBNET_CIDR         = var.PRIVATE_SUBNET_CIDR
DEFAULT_VPC_ID              = var.DEFAULT_VPC_ID
DEFAULT_VPC_CIDR            = var.DEFAULT_VPC_CIDR
DEFAULT_VPC_RT              = var.DEFAULT_VPC_RT
PUBLIC_HOSTED_ZONE_NAME     = var.PUBLIC_HOSTED_ZONE_NAME
PUBLIC_HOSTED_ZONE_ID       = var.PUBLIC_HOSTED_ZONE_ID
   
}



