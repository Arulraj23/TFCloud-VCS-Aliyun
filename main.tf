module "my_vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  project_name= var.project_name
}

module "my_vswitch" {
  source = "./modules/vswitchs"
  vpc_id      = module.my_vpc.vpc_id
  vswitch_cidr  = var.vswitch_cidr
  project_name = var.project_name
}

module "my_ecs" {
  source        = "./modules/ec2"
 # ecs_count     = var.ecs_count
  image_id        = var.image_id
  instance_type = var.instance_type
  vswitch_id     = module.my_vswitch.vswitch_id
  #vpc_id        = module.my_vpc.vpc_id
  project_name  = var.project_name
  sg_id = module.my_vpc.sg_id
  instance_name = var.instance_name
}

/* resource "alicloud_vswitch" "main" {
  # VPC ID
  vpc_id            = alicloud_vpc.main.id
  # CIDR block of the VSwitch
  cidr_block        = "10.1.0.0/24"
  # Dependent resource (this dependent resource will be created first)
  zone_id = "cn-shanghai-a"
  depends_on = [alicloud_vpc.main]
} */

/* module "data" {
  source = "./module/data"
  vpc_name = var.vpc_name
  cidr_block = var.cidr_block
} */