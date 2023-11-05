terraform {
  backend "remote" {
    organization = "luketevl"

    workspaces {
      name = "database"
    }
  }
}