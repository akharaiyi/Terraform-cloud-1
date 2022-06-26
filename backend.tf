terraform {
  cloud {
    organization = "DevSecOps-dev"

    workspaces {
      name = "Dev-cli"
    }
  }
}



