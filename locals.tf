locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "Engenharia de Software 7º Periodo"
    CreatedAt = "2022-07-04"
    ManagedBy = "Terraform"
    Owner     = "Diego Leal Igor Gomes"
    Service   = "Auto Scaling EventsMicro App"
  }
}
