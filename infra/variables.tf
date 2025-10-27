# Variable definitions for the infrastructure
# These are automatically synchronized to Terraform Cloud during initial provisioning

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "spec-bootstrap"
}

variable "environment" {
  description = "Environment name (dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Primary region for resources"
  type        = string
  default     = "us-east-1"
}

# Example sensitive variable
variable "api_token" {
  description = "API token for external service"
  type        = string
  default     = ""
  sensitive   = true
}

# Add your project-specific variables below
