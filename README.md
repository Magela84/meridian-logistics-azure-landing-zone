# Landing Zone Deployment – Logistics & Supply Chain

## Overview
A secure, scalable Azure landing zone tailored for a mid-size logistics and supply chain company seeking to modernize and centralize their workloads. All infrastructure is deployed using **Infrastructure as Code (IaC)**, enabling repeatable, auditable, and governed cloud environments.

## Problem Statement
The client needed to:
- **Centralize workloads** across multiple business units
- **Enforce security baselines** and segmentation for sensitive logistics data
- **Accelerate cloud adoption** without manual configuration drift
- **Prepare for future automation** in supply chain analytics

## What I Built
- **Hub-and-spoke network topology** with centralized connectivity, security, and monitoring
- **Multiple spokes** for production, development, and analytics environments
- **Segregated subnets and NSGs** for tiered workloads (application, database, integration)
- **Management group structure** for policy inheritance and cost governance
- **Azure Policy** for enforcing security and compliance
- **Automated resource tagging** for chargeback and inventory management
- **Terraform modules** for reusable, consistent deployments

## Architecture Overview
- **Hub:** Shared services, firewall, VPN gateway, Log Analytics, Bastion
- **Spokes:** Individual business unit environments (prod/dev/analytics)
- **Peering:** Secure, non-transitive connections between hub and spokes
- **Policy & Tagging:** Organization-wide enforcement via management groups

## Technologies Used
- **Terraform**
- **Azure Virtual Network (VNet)**
- **Network Security Groups (NSG)**
- **Azure Firewall**
- **Log Analytics**
- **Azure Bastion**
- **Azure Policy**
- **Management Groups**
- **Resource Tagging**
2. Configure Terraform variables for your Azure tenant and organization structure.
3. Run `terraform init` and `terraform apply` to deploy the landing zone.
4. Onboard additional workloads and business units by extending the spoke modules.

## Engagement Outcome
- **Rapid, secure cloud onboarding** for new business units
- **Reduced security and compliance risk** through policy enforcement and segmentation
- **Centralized operations** with cost and inventory visibility
- **Foundation for future supply chain analytics and automation**
- **All configurations and controls auditable via Git and Terraform state**

## Author
**Magela Bobby Akinola**  
[LinkedIn](https://linkedin.com/in/magela-akinola) | [Portfolio](https://magela84.github.io/magela-portfolio-website/) | [GitHub](https://github.com/Magela84)

## Usage
1. Clone the repo:
