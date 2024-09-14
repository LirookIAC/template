# Terraform Azure CI/CD Template

## Overview

This repository contains a CI/CD template for managing Terraform deployments in Azure using GitHub Actions. It includes workflows for validating, planning, and applying Terraform configurations. The setup ensures that Terraform changes are applied systematically and consistently through automated processes.

### Key Workflow Components:

1. **Terraform Validate**: Checks the syntax and integrity of the Terraform configuration files.
2. **Terraform Plan**: Creates an execution plan for Terraform, which details the changes that will be made.
3. **Terraform Apply**: Applies the changes required to reach the desired state of the configuration.

The template uses GitHub Actions to automate these tasks, making it easier to integrate Terraform with your development and deployment pipelines.

## Prerequisites

Before using this CI/CD template, ensure you have the following:

1. **Azure Credentials**: Set up Azure Service Principal credentials. You need the following secrets to be configured in your GitHub repository:
   - `ARM_CLIENT_ID`: Azure Service Principal client ID.
   - `ARM_CLIENT_SECRET`: Azure Service Principal client secret.
   - `ARM_TENANT_ID`: Azure tenant ID.
   - `ARM_SUBSCRIPTION_ID`: Azure subscription ID.

2. **Azure Storage Backend**: Configure the backend for storing Terraform state files. Set up the following secrets:
   - `BACKEND_RESOURCE_GROUP_NAME`: The name of the Azure resource group where the backend storage account is located.
   - `BACKEND_STORAGE_ACCOUNT_NAME`: The name of the Azure Storage account used for the backend.
   - `BACKEND_STORAGE_CONTAINER_NAME`: The name of the container within the Azure Storage account used for Terraform state files.

3. **Terraform Scripts**: Ensure that you have the necessary Terraform scripts and configuration files in the `src/terraform` directory. This includes the `backend.tfvars` file and any custom scripts you may use, such as `terraform-with-backend.sh`.

4. **GitHub Actions**: Familiarize yourself with GitHub Actions and how to manage secrets in GitHub. The workflows use GitHub Actions for automation, and secrets need to be configured properly in your GitHub repository settings.

5. **Terraform Configuration**: Ensure that your Terraform configuration files are correctly set up and located in the `src/terraform` directory. This setup includes your Terraform files, variable files, and any necessary modules or resources.

With these prerequisites met, you can start using the CI/CD template to manage your Terraform deployments in Azure effectively.
