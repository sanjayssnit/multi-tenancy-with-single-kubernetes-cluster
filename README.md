# Multi-Tenancy / Physical Workload Segregation in a single Kubernetes Cluster

This project demonstrates **soft multi-tenancy** using **a single AWS EKS cluster** by achieving physical segregation using **Node Affinity, Taint and Tolerance** and logical segregation using **Namespaces**.  

---
## **🔹 Prerequisites**
Before setting up, ensure you have:
- **Git installed** (to clone this repo)
- **An AWS account** (to setup the infrastructure)
- **Terraform installed** (for infrastructure deployment)
- **AWS Cli installed**
- **kubectl installed** (for creating namespace and deploying services)
---

## **Step 1: Deploy AWS Infrastructure Using Terraform**
1. Clone this repository:
2. terraform init
3. terraform plan
4. terraform apply

The following infra would be provisioned
- VPC and Subnets
- EKS Cluster with necessary IAM permissions
- 2 Node Groups (one for each tenant - Each node would be applied a label and a taint value - check the terraform code)

## **Step 2: Create the Namespaces**
- kubectl apply -f config/tenant1-namespace.yaml
- kubectl apply -f config/tenant2-namespace.yaml

## **Step 3: Deploy the applications**
- kubectl apply -f config/tenant1-deployment.yaml
- kubectl apply -f config/tenant2-deployment.yaml

Now both the applications would have been deployed into their respective node groups based on the toleration value configured in the deployment.yaml file!
