resource "aws_autoscaling_group" "asg" {
  name                = "tf-lab-asg"
  desired_capacity    = 2
  min_size            = 2
  max_size            = 4
  health_check_type   = "ELB"
  target_group_arns   = [aws_lb_target_group.tg.arn]
  vpc_zone_identifier = data.aws_subnets.default.ids

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }
  tag {
  key                 = "Name"
  value               = "Terraform-ASG-Instance"
  propagate_at_launch = true
}
}
