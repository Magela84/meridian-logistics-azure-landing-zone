# Azure Landing Zone — Meridian Logistics Group

> **Project 1 · Magela84 Cloud Engineering Portfolio**
> Industry: Logistics & Supply Chain

## Client Overview

Meridian Logistics Group is a supply-chain company preparing to migrate
three on-premises applications to Azure over the next six months. This
engagement delivers a repeatable, policy-compliant Azure foundation
**before** any workload moves to the cloud.

## Problem Statement

The customer had no existing cloud infrastructure and required every
resource to be version-controlled and deployable from code. **No manual
portal configuration was permitted** — the foundation had to be
reproducible and auditable end to end.

## What I Built

- Hub-and-spoke VNet topology using **modular Terraform**
- Azure SQL Database and Storage Account provisioned via **Bicep**
- **Remote Terraform state** in Azure Blob Storage with state locking
- A customer-facing **deployment runbook** for internal team handoff

## Architecture

```
            ┌──────────────────────────────┐
            │        Hub VNet (main)        │
            │  ┌────────────┐ ┌───────────┐ │
            │  │ general    │ │ data      │ │  subnets
            │  │ subnet     │ │ subnet    │ │
            │  └────────────┘ └───────────┘ │
            └───────────────┬──────────────┘
                            │ Bicep layers data services
                 ┌──────────┴───────────┐
                 ▼                      ▼
          ┌─────────────┐        ┌──────────────┐
          │ Azure SQL   │        │ Storage Acct │
          │ Server + DB │        │ + Blob (state│
          └─────────────┘        │  + locking)  │
                                 └──────────────┘
   Terraform provisions network + state · Bicep provisions data tier
```

## Resources Deployed

| Resource | Type | Purpose |
|---|---|---|
| Resource Group | `azurerm_resource_group` | Container for all landing-zone resources |
| Hub Virtual Network | `azurerm_virtual_network` | Core network for the hub-and-spoke design |
| `general` subnet | `azurerm_subnet` | General-purpose application subnet |
| `data` subnet | `azurerm_subnet` | Isolated subnet for data services |
| SQL Server + Database | `Microsoft.Sql` (Bicep) | Managed relational data tier |
| Storage Account + Blob container | `Microsoft.Storage` (Bicep) | App storage + remote Terraform state |

## Technologies Used

Terraform · Bicep · ARM Templates · Azure CLI · Git & GitHub

## How to Deploy

```bash
git clone https://github.com/Magela84/meridian-logistics-azure-landing-zone.git
cd meridian-logistics-azure-landing-zone

az login                       # authenticate to Azure
cd terraform
terraform init                 # remote state in Azure Blob
terraform plan
terraform apply

# Data tier (Bicep)
az deployment group create -g <resource-group> -f ../bicep/sql.bicep
az deployment group create -g <resource-group> -f ../bicep/storage.bicep
```

Full step-by-step in [`docs/deployment-runbook.md`](docs/deployment-runbook.md).

## Engagement Outcome

Delivered a fully version-controlled Azure landing zone ready for
workload migration. All infrastructure is reproducible from code in
**under 10 minutes**, with remote state and locking enabling safe team
collaboration.

## Author

**Magela84** — Cloud Engineer
[github.com/Magela84](https://github.com/Magela84)
