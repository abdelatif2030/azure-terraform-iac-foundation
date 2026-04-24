# Azure Infrastructure Provisioning using Terraform (IaC)

This project demonstrates a production-grade Infrastructure as Code (IaC) implementation using Terraform to provision and manage a complete Azure cloud environment.

It includes Kubernetes (AKS), networking, security, container registry, storage, and identity management — fully automated and reproducible.

---

## 🚀 Project Overview

This infrastructure was built entirely using Terraform to deploy a scalable and secure Azure environment, including:

- Azure Kubernetes Service (AKS)
- Azure Container Registry (ACR)
- Virtual Network (VNet) with subnets
- Network Security Groups (NSG)
- Load Balancer
- Managed Identity for secure access
- Storage Account for state/data
- Network Watcher for monitoring network traffic

---

## 🧱 Deployed Azure Resources

### 🖥️ Kubernetes
- Azure Kubernetes Service (AKS)
- Node Pool (VM Scale Set)
- System & Agent Managed Identity

### 📦 Container Registry
- Azure Container Registry (ACR)

### 🌐 Networking
- Virtual Network (VNet)
- Subnets
- Network Security Group (NSG)
- Azure Load Balancer
- Network Watcher

### 💾 Storage
- Azure Storage Account (for state or application data)

### 🔐 Identity & Security
- Managed Identity for AKS
- RBAC-ready architecture

---

## 📍 Resource Group
rg-devopsportfolio-dev

---

## 🌍 Region
East US

---

## 🧱 Architecture Highlights

- Fully automated Azure infrastructure provisioning
- Secure networking with NSGs and VNet isolation
- Scalable Kubernetes cluster (AKS)
- Containerized workload support via ACR
- Production-ready IAM design using Managed Identity
- Centralized infrastructure management using Terraform

---

## 📁 Project Structure

│── main.tf
│── provider.tf
│── variables.tf
│── outputs.tf
│── backend.tf
│── modules/
│     ├── aks/
│     ├── network/
│     ├── acr/
│     ├── storage/
│     ├── identity/
│
README.md


---

## ⚙️ How to Deploy

### 1. Initialize Terraform
```bash
terraform init
2. Validate configuration
terraform validate
3. Review execution plan
terraform plan
4. Deploy infrastructure
terraform apply -auto-approve
🔐 Prerequisites
Azure Subscription
Azure CLI installed
Terraform installed (>= 1.5+ recommended)
Logged into Azure CLI:
az login

📊 Use Cases

This infrastructure can be used for:

Kubernetes-based microservices deployment
CI/CD pipelines (Jenkins / GitHub Actions / Azure DevOps)
Cloud-native application hosting
DevOps portfolio demonstration
Production-ready Azure foundation
📈 Key Benefits
Fully automated cloud provisioning
Scalable and modular architecture
Secure by design (IAM + NSG + VNet isolation)
Kubernetes-ready environment
Easy to extend for multi-environment setup (dev/staging/prod)
🚀 Future Improvements
Add Terraform remote backend (Azure Storage State)
Add CI/CD pipeline for Terraform automation
Implement Helm deployments for AKS workloads
Add monitoring stack (Prometheus + Grafana)
Add multi-environment support (dev/staging/prod)
Add policy-as-code (Azure Policy / Sentinel)

👨‍💻 Author

DevOps Engineer ( Abdellatif Mohamed )
Focused on Azure Cloud, Kubernetes, and Infrastructure as Code (Terraform)

