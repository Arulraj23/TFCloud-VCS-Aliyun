resource "alicloud_instance" "my_instance" {
  #count         = "${var.ecs_count}"
  image_id          = "${var.image_id}"
  instance_type = "${var.instance_type}"
  vswitch_id     = "${var.vswitch_id}"
  security_groups =  "${var.sg_id}"
  instance_name = "${var.instance_name}"

  tags = {
    Name = "${var.project_name}-My ECS Instance"
  }
}

/* resource "aws_ebs_volume" "my_volume" {
    availability_zone = "us-east-1a"
    size = 10
    tags = {

        Name = "${var.project_name}-ebs"

    }    
}

resource "aws_volume_attachment" "ebsAttach" {
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.my_volume.id
    instance_id = aws_instance.my_instance.id
} */
