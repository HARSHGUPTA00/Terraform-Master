## TERRAFORM - Infrastructure as code(IaC)

Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp that allows you to define, provision, and manage infrastructure resources across a variety of cloud providers and services (such as AWS, Azure, Google Cloud, etc.) using a high-level configuration language called HCL (HashiCorp Configuration Language).

## Benefits of Using Terraform:

- Consistency: Infrastructure can be reproduced in a consistent manner across multiple environments (e.g., development, staging, production).
- Collaboration: With Terraform's declarative syntax and version control integration, teams can work together efficiently.
- Scalability: Terraform can easily handle complex infrastructure across multiple cloud providers and services.
- Automation: Terraform automates the process of infrastructure provisioning and management, which reduces human errors and time spent on manual tasks.

## Install Terraform && AWS CLI

- Install AWS CLI
As the first step, you need to install AWS CLI as we will use the AWS CLI (aws configure) command to connect Terraform with AWS in the next steps.

Follow the below link to Install AWS CLI.
~~~
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
~~~ 
- Install Terraform
Next, Install Terraform using the below link.
~~~
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
~~~
- Connect Terraform with AWS

Its very easy to connect Terraform with AWS. Run aws configure command and provide the AWS Security credentials as shown in the video.

## Terraform Infrastructure Setup

This project utilizes Terraform to provision and manage infrastructure resources on AWS

### Setup

- Clone the repository

Clone this repository to your local machine
~~~
git clone https://github.com/HARSHGUPTA00/Terraform-Master.git
cd terraform-project
~~~

- Configure Cloud Provider Credentials

Configure your cloud provider credentials to allow Terraform to interact with your infrastructure.
~~~
aws configure
~~~
-  Initialize Terraform

Initialize the Terraform configuration, download necessary providers, and set up the backend.
~~~
terraform init
~~~
- Plan the Deployment

Run the following command to see what changes Terraform will apply (dry run).
~~~
terraform plan
~~~
- Apply the Configuration

To apply the configuration and provision the resources, use:
~~~
terraform apply
~~~
Terraform will prompt for confirmation. Type yes to proceed with the deployment.

- Verify Infrastructure

Once the apply command completes, verify that the infrastructure has been created successfully in the cloud provider's console.

### Configuration

You can customize the configuration by modifying the .tf files in the repository. Specifically, you can update:

- variables.tf: To change variables such as instance size, region, etc.
- main.tf: To define the resources being provisioned.
- outputs.tf: To configure any outputs for later use.

### Destroy the Infrastructure

If you want to tear down the infrastructure and remove all managed resources, you can run:
~~~
terraform destroy
~~~
