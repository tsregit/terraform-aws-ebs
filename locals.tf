locals {
  name_prefix = var.environment
  default_tags = {
      Enviroment = var.environment
      Terraform = true
  }
  asg_default_tags =[
  {
      key = "Name"
      value = "APP-PETS"
      propagate_at_launch = "true"
  },
  {
      key = "Environment"
      value = var.environment
      propagate_at_launch = "true"
  }
  ]
}