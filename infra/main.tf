# Terraform Cloud Backend Configuration
# This configuration is automatically set up during initial provisioning

terraform {
  required_version = ">= 1.0"

  # Backend configuration will be managed by TFC
  # The tfc-bootstrap workflow creates and configures the workspace
  # Using 'cloud' block instead of 'backend' for Terraform 1.1+
  cloud {
    organization = "pr-cybr"
    
    workspaces {
      # This will be set to the repository name
      # Replace 'spec-bootstrap' with your actual workspace name after creation
      name = "spec-bootstrap"
    }
  }

  required_providers {
    # Add your required providers here
    # Example:
    # random = {
    #   source  = "hashicorp/random"
    #   version = "~> 3.0"
    # }
  }
}

# Main infrastructure resources
# Add your infrastructure configuration here

# Example resource (remove or replace with actual resources)
# resource "random_id" "example" {
#   byte_length = 8
# }
