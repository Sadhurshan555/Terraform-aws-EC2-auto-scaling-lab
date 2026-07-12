resource "aws_launch_template" "lt" {
  name_prefix   = "tf-lab-"
  image_id      = data.aws_ami.al2023.id
  instance_type = var.instance_type
  user_data     = base64encode(file("${path.module}/userdata.sh"))

  vpc_security_group_ids = [
    aws_security_group.ec2.id
  ]
}
