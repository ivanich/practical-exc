locals {
  environment      = "dev"
  aws_region       = "eu-west-1"
  app_name         = "practical-exc"
  container_port   = 5000
  listener_port    = 80
  desired_count    = 1
  cpu              = 256
  memory           = 512
  vpc_id           = "vpc-0123456789abcdef0"
  public_subnet_ids = [
    "subnet-11111111111111111",
    "subnet-22222222222222222"
  ]
}
