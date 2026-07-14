# Azure Landing Zone — Logistics & Supply Chain Engagement

![Status](https://img.shields.io/badge/Status-Complete-green)
![Cloud](https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4)
![IaC](https://img.shields.io/badge/IaC-Terraform%20%7C%20Bicep-purple)

## Engagement Overview
A logistics and supply chain company preparing to migrate
three on-premises applications to Azure required a repeatable
policy-compliant Azure foundation before any workloads moved
to the cloud. All infrastructure deployed as Infrastructure
as Code — zero manual portal configurations permitted.

## Problem Statement
The client had no existing cloud infrastructure and required
all resources to be version-controlled and deployable via
code for auditability and repeatability.

## What I Built
- Hub-and-spoke Virtual Network topology using modular Terraform
- Azure SQL and Storage Account provisioned via Bicep
- Remote Terraform state in Azure Blob Storage with state locking
- Azure Database for PostgreSQL 15 Flexible Server
- Customer-facing deployment runbook for internal team handoff

## Architecture
