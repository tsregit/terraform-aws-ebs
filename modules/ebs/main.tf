resource "aws_ebs_volume" "ebs" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = var.tags
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = var.instance_id
}