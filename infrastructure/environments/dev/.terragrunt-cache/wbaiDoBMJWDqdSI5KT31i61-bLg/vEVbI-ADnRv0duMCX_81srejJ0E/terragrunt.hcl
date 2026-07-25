include "root" {
  path = find_in_parent_folders("root.hcl")
}

locals {
  env_vars = read_terragrunt_config("${get_terragrunt_dir()}/env.hcl")
}

terraform {
  source = "../../modules/ecs-service"
}

inputs = merge(
  local.env_vars.locals,
  {
    container_image = "123456789012.dkr.ecr.eu-west-1.amazonaws.com/practical-exc:dev"
  }
)
