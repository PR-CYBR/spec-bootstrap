# Terraform Cloud Backend Configuration
# This configuration is automatically set up during initial provisioning

terraform {
  required_version = ">= 1.0"

  # Backend configuration will be managed by TFC
  # The tfc-bootstrap workflow creates and configures the workspace
  # Using 'cloud' block for Terraform 1.1+
  cloud {
    organization = "pr-cybr"
    
    workspaces {
      # IMPORTANT: Update this to match your repository name
      # The TFC bootstrap workflow creates a workspace with the same name as your repo
      # For example, if your repo is "my-project", set name = "my-project"
      name = "UPDATE_ME"
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
