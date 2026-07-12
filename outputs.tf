output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = aws_lb.alb.dns_name
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.asg.name
}

output "launch_template_id" {
  value = aws_launch_template.lt.id
}

output "target_group_arn" {
  value = aws_lb_target_group.tg.arn
}