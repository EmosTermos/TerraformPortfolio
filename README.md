# TerraformPortfolio

## A short description

1) Terraform creates infastracture for AWS Amplify as a WebApp
2) Creates triggers for repository that is connected via key. What causes the build and deployment of an application.
3) The domain was purchased through Route 53 and assigned to the infrastructure. SSL certificates are automatically generated for the solution.

## Check my project that is assigned to AWS Amplify

`https://github.com/EmosTermos/PortfolioNextJs`

## If you want to deploy infrastructure by yourself

1) Create file called terraform.tfvars =>

```
    token       = {YOUR ACCESS KEY}
    domain_name = {YOUR DOMAIN}
```

2) Change vartiables.tf to fit your needs. 
3) Commands to run => 
- Initialize Terraform to download any necessary provider plugins and initialize your working directory:
    `terraform init`

- Run a Terraform plan to preview the changes and see what will be created, modified, or destroyed:
    `terraform plan`

- If you are satisfied with the proposed changes, you can proceed with the deployment by running:
    `terraform apply`
