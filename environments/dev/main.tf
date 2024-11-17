module "compute" {
  source          = "../../modules/compute"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = module.network.public_subnet_id
  key_name        = var.key_name
  instance_name   = "dev-compute-instance"
}
module "network" {
  source              = "../../modules/network"
  cidr_block          = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  availability_zone   = "us-east-1a"
  vpc_name            = "dev-vpc"
  }