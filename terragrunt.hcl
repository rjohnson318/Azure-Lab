terraform {
  extra_arguments "custom_vars" {
    commands = get_terraform_commands_that_need_vars()

    optional_var_files = [
      "${get_terragrunt_dir()}/terraform.tfvars"
    ]
  }
}

provider "azurerm" {
  features {}
}
