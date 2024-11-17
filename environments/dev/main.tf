module "compute" {
  source          = "../../modules/compute"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = module.network.public_subnet_id
  key_name        = var.key_name
  instance_name   = "dev-compute-instance"
}
