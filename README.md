# 🚀 TaskOps – End-to-End DevOps & GitOps Automation Platform

TaskOps is a production-oriented DevOps project demonstrating **automated CI pipelines**, **container image lifecycle management**, **infrastructure provisioning with Terraform**, and **GitOps-based Kubernetes deployments using Helm and Argo CD**.

The repository follows a **microservice-first architecture**, where each backend service and UI component is independently built, deployed, and managed.

---

## 🧩 Key Highlights

- Automated GitHub Actions workflows for Docker image build & push
- Secure Azure authentication using OIDC
- Azure Container Registry (ACR) for image storage
- Helm charts for Kubernetes application packaging
- Argo CD for GitOps-based continuous delivery
- Terraform for Azure infrastructure provisioning
- Independent CI pipelines for each microservice and UI

---

## 📂 Repository Structure

```text
TASKOPS-GITOPS
├── .github/
│   └── workflows/
│       ├── Add Task Image Build-Push.yml
│       ├── Delete Task Image Build-Push.yml
│       ├── Get Task Image Build-Push.yml
│       └── Todo UI Image Build-Push.yml
│
├── Argocd/
│   └── taskops_app.yaml
│
├── gitops/
│   └── dev/
│       └── Values.yaml
│
├── Helm/
│   └── taskOps/
│       ├── Chart.yaml
│       ├── values.yaml
│       ├── DevValues.yaml
│       ├── ProdValues.yaml
│       └── templates/
│           ├── add-task/
│           │   ├── deployment.yaml
│           │   ├── service.yaml
│           │   └── ingress.yaml
│           ├── delete-task/
│           │   ├── deployment.yaml
│           │   ├── service.yaml
│           │   └── ingress.yaml
│           ├── get-task/
│           │   ├── deployment.yaml
│           │   ├── service.yaml
│           │   └── ingress.yaml
│           └── todo-ui/
│               ├── deployment.yaml
│               ├── service.yaml
│               └── ingress.yaml
│
├── Services/
│   ├── TaskOps-add-task/
│   ├── TaskOps-delete-task/
│   ├── TaskOps-get-task/
│   └── TaskOps-ui/
│
├── Terraform/
│   ├── environments/
│   │   ├── dev/
│   │   │   ├── main.tf
│   │   │   ├── provider.tf
│   │   │   ├── terraform.tfvars
│   │   │   └── variable.tf
│   │   └── prod/
│   └── modules/
│       ├── azurerm_container_registry/
│       │   ├── acr_main.tf
│       │   └── acr_variable.tf
│       ├── azurerm_database/
│       │   ├── db_main.tf
│       │   └── db_variable.tf
│       ├── azurerm_kubernetes_services/
│       │   ├── aks_main.tf
│       │   └── aks_variable.tf
│       └── azurerm_resource_group/
│           ├── rg_main.tf
│           └── rg_variable.tf
│
└── README.md
```

---

## 🔁 CI/CD Workflow Trigger Strategy

Each GitHub Actions workflow is fully automated and event-driven, designed to respond only to relevant source code changes.

The pipelines continuously monitor their assigned service directories and are executed only when updates occur within those paths on the main branch.

**This approach ensures:**

- Precise pipeline execution per service or UI component

- Elimination of unnecessary image rebuilds

- Faster feedback cycles and optimized CI resource usage

- Independent and scalable CI/CD pipelines aligned with microservice architecture

Each workflow operates in isolation, allowing backend services and the UI to evolve independently while maintaining a consistent and reliable delivery process.

---

## ⚙️ CI Pipeline Responsibilities

Each GitHub Actions workflow performs the following operations:

1. Source code checkout

2. Secure authentication to Azure using OIDC

3. Azure Container Registry login

4. Docker image build from the service directory

5. Image tagging with versioning

6. Push image to Azure Container Registry

This ensures a secure, repeatable, and automated image delivery process.

---

## 📦 Kubernetes & GitOps Deployment

- Helm charts define Kubernetes resources for all services and UI

- Environment-specific configurations are managed using values files

- Argo CD continuously monitors the GitOps repository and syncs the cluster state

- Changes to Helm values or manifests are automatically reflected in the cluster

---

## 🏗️ Infrastructure as Code (Terraform)

- Modular Terraform design for reusability and clarity

- Separate environments for dev and prod

- Modules for:

  - Resource Groups

  - Azure Container Registry

  - Azure Kubernetes Service

  - Database services

Terraform ensures consistent, auditable, and scalable infrastructure provisioning.

## 👤 Author

- Arpit Yadav
- arpit39115@gmail.com

🔗 GitHub: https://github.com/arpitrao7777

🔗 LinkedIn: https://www.linkedin.com/in/arpit-yadav-786b1622b
