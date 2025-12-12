module "app-resources" {
  source                 = "./modules/app-resources"
  for_each               = var.components
  instance_type          = lookup(var.components,"instance_type","t3.micro")
  name                   = lookup(var.components,"name",null)
  vpc_security_group_ids = var.vpc_security_group_ids
  zone_id                = var.zone_id
}
