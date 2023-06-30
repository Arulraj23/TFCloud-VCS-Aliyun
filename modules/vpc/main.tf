resource "alicloud_vpc" "ali-vpc" {
  cidr_block       = "${var.vpc_cidr}"
  

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

resource "alicloud_security_group" "default" {
  name = "default"
  vpc_id = alicloud_vpc.ali-vpc.id
}

/* resource "alicloud_security_group_rule" "allow_all_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 1
  security_group_id = "alicloud_security_group.default. *.id"
  cidr_ip           = "0.0.0.0/0" */
}
