locals {
  common_tags = {
    Project   = "Database with Terraform"
    CreatedAt = formatdate("YYYY-MM-DD", timestamp())
    ManagedBy = "Terraform"
    Owner     = "luketevl"
  }
}