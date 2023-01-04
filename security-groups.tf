module "security-group-http" {
  source              =  "app.terraform.io/LoudOnCloudTF/security-group/aws"
  version             = "4.8.0"
  name                = "http-traffic-${var.environment}"
  description         = "Security group for ${var.environment} with HTTP ports open within VPC"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["10.10.0.0/16"]
}
