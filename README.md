# Learn Terraform Advanced Deployment Strategies

Learn how to use Terraform as well as AWS's Application Load Balancers and EC2 instances for canary tests and blue/green deployments. Learn how to add feature flags to your Terraform configuration by using variables and conditionals.

## How does it work?
![Blue&Green Canary Test](/aws-diagram.png)

## Steps to run

If you don´t have Terraform installed please visit [https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli](url)

Use `terraform init` to preparae the current working directory for use with Terraform

Then create an execution plan with `terraform plan` to preview changes on your infrastructure

Finally type `terraform apply` and enter your aws credential (access and secret key) to build your configured resources

For this UC you'll need to define the traffic distribution map that routes the request to the different servers (green or blue) according to your needs with the following values available:

- `blue` - 100% for blue server
- `blue-90` - 90% redirected to blue server
- `split` - 50% of trafic goes to each server
- `green-90` - 90% for green server
- `green` - 100% for green server
