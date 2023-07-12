resource "null_resource" "lame_resource" {
    triggers = {
        "test_var" = var.lame_variable
    }
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fkpi-org"

    workspaces {
      name = "lame-workspace"
    }
  }
}

variable "lame_variable" {
    type = string
    description = "not so cool string."
    default = "lame"
  
}
