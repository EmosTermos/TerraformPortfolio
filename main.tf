resource "aws_amplify_app" "amplify_app" {
  name         = var.app_name
  repository   = var.repository
  access_token = var.token
  platform     = var.platform

  build_spec = file(var.build_spec_path)
}

resource "aws_amplify_branch" "main" {
  app_id            = aws_amplify_app.amplify_app.id
  branch_name       = var.branch_name
  enable_auto_build = true

  framework = var.framework
}

resource "aws_amplify_domain_association" "portfolio_domain" {
  app_id      = aws_amplify_app.amplify_app.id
  domain_name = var.domain_name

  sub_domain {
    branch_name = aws_amplify_branch.main.branch_name
    prefix      = ""
  }

  sub_domain {
    branch_name = aws_amplify_branch.main.branch_name
    prefix      = "www"
  }
}

resource "aws_amplify_webhook" "main" {
  app_id      = aws_amplify_app.amplify_app.id
  branch_name = aws_amplify_branch.main.branch_name
  description = "trigger main"
}