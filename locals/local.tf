locals {
  domain_name = "daws23d.online"
  zone_id = "Z0862585381IE3RAE0D0S"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
}