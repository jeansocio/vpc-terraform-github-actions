🌐 Terraform VPC Deployment with Terraform and GitHub Actions

📘 Project Overview

This project walks you through the complete process of deploying a Virtual Private Cloud (VPC) on a cloud provider using Terraform and automating the deployment with GitHub Actions.

By the end of this project, you’ll have your infrastructure as code, stored in GitHub, and automatically deployed every time you push changes. This is a real-world DevOps workflow using modern tools and best practices.

🧱 Project Goals

✅ Learn how to set up Terraform locally

✅ Define and deploy a VPC using Terraform

✅ Automate deployment using GitHub Actions

✅ Manage infrastructure using Infrastructure as Code (IaC)

✅ Store all code and configuration in a GitHub repository

📦 Project Structure

.
├── main.tf                # Terraform configuration

├── variables.tf           # Input variables

├── outputs.tf             # Output values

├── terraform.tfvars       # Variable values

├── .github/

│   └── workflows/

│       └── terraform.yml  # GitHub Actions workflow

├── .gitignore

└── README.md

🔧 1. Setting Up Terraform
Install Terraform on your local machine:

Download Terraform

Verify installation:

terraform -version
✍️ 2. Writing Terraform Code
Define your VPC infrastructure in main.tf. This includes:

VPC block

Subnets

Internet Gateway

Route Tables

Security Groups

You can customize these resources using input variables from variables.tf.

🚀 3. Initialize & Apply Terraform

Initialize your project:

terraform init
Preview the execution plan:

terraform plan
Apply the configuration:

terraform apply

This will provision the VPC in your cloud environment.

📂 4. GitHub Repository Setup

Create a new repository on GitHub. Add essential files:

.gitignore: to exclude Terraform state files, .terraform/, etc.

README.md: this documentation

terraform.tfvars: for setting variable values (do not commit sensitive info!)

⚙️ 5. GitHub Actions Configuration

Set up CI/CD using GitHub Actions in .github/workflows/terraform.yml.

Workflow includes:

Terraform formatting and validation

Terraform plan

Terraform apply (optional or on manual approval)

You'll also need to add AWS credentials or other provider secrets in GitHub > Settings > Secrets:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

📤 6. Push to GitHub

Commit your code and push to your GitHub repo:

git add .

git commit -m "Initial Terraform VPC setup"

git push origin main

This will trigger the GitHub Actions workflow if configured correctly.

📊 7. Monitor & Verify

Go to the Actions tab in your GitHub repository to:

Monitor your Terraform workflow runs

View logs and results

Ensure the infrastructure was provisioned successfully

You can also log in to your cloud provider console (e.g. AWS) to verify that the VPC and associated resources were created.

🧠 Summary

Feature	Status

Terraform Setup	✅

VPC Defined	✅

GitHub Repo	✅

GitHub Actions CI/CD	✅

Infrastructure Live	✅

🙌 Final Notes

This project simulates a real-world infrastructure deployment pipeline using modern DevOps tools. You now have a solid foundation in:

Terraform syntax and workflow

IaC principles

CI/CD automation with GitHub Actions
