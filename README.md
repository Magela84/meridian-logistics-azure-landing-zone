# Azure Landing Zone — Meridian Logistics Group

## Client Overview
Meridian Logistics Group is a supply chain company preparing to migrate
three on-premises applications to Azure over the next 6 months. This
engagement delivers a repeatable, policy-compliant Azure foundation
before any workloads move to the cloud.

## Problem Statement
The customer had no existing cloud infrastructure and required all
resources to be version-controlled and deployable via code. No manual
portal configurations permitted.

## What I Built
- Hub-and-spoke VNet topology using modular Terraform
- Azure SQL and Storage Account provisioned via Bicep
- Remote Terraform state stored in Azure Blob Storage with state locking
- Customer-facing deployment runbook for internal team handoff

## Technologies Used
- Terraform
- Bicep
- ARM Templates
- Azure CLI
- Git and GitHub

## How to Deploy
1. Clone this repo
2. Run az login to authenticate to Azure
3. Navigate to the terraform folder
4. Run terraform init
5. Run terraform plan
6. Run terraform apply

## Engagement Outcome
Delivered a fully version-controlled Azure landing zone ready for
workload migration. All infrastructure reproducible from code in
under 10 minutes.

## Author
Cloud Engineer - Magela84
