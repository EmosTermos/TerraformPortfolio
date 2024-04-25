variable "region" {
  type        = string
  description = "aws region name"
  default     = "eu-central-1"
}
variable "token" {
  type        = string
  description = "Github token to connect github repo"
}

variable "repository" {
  type        = string
  description = "Url to repository with Portfolio source code"
  default     = "https://github.com/EmosTermos/porfolio_nextjs"
}

variable "app_name" {
  type        = string
  description = "Aws Amplify app name"
  default     = "dabrowski-porfolio"
}

variable "branch_name" {
  type        = string
  description = "AWS Amplif app repo branch name"
  default     = "main"
}

variable "domain_name" {
  type        = string
  description = "Aws Amplify domain name"
}

variable "build_spec_path" {
  type        = string
  description = "path to build spec"
  default     = "amplify.yml"
}

variable "platform" {
  type    = string
  default = "WEB_COMPUTE"
}

variable "framework" {
  type    = string
  default = "Next.js - SSR"
}