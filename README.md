** # TaskOps GitOps – End-to-End Azure DevOps & GitOps Architecture **

** ## 📌 Project Overview **

TaskOps GitOps is a production-grade cloud-native project that demonstrates an end-to-end DevOps and GitOps workflow on Microsoft Azure.  
The project automates infrastructure provisioning using Terraform modules, builds and pushes container images using GitHub Actions, and deploys microservices on Azure Kubernetes Service (AKS using Argo CD with Application Gateway Ingress Controller (AGIC).

This architecture follows Infrastructure as Code (IaC), GitOps principles, and modern CI/CD best practices.

---

** ## 🏗️ Architecture Components **

*** ### ☁️ Infrastructure (Terraform – Modular) **

- Azure Resource Group
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Azure SQL Database
- Networking & dependencies
- Environment-specific configurations (dev/prod)

All resources are provisioned using **Terraform modules** for reusability and scalability.

---

** ### 🔄 CI/CD (GitHub Actions) **

- Workflow-based image build and push
- Separate workflows per microservice
- `workflow_dispatch` enabled for controlled/manual execution
- Docker images pushed to ACR
- Versioned image tagging strategy

---

** ### 🚀 GitOps Deployment (Argo CD) **

- Argo CD continuously watches the GitOps repository
- Automatically syncs Kubernetes manifests/Helm charts
- Deploys applications on AKS
- Ensures declarative and drift-free deployments

---

** ### 🌐 Kubernetes & Networking **

- Microservices-based architecture:
  - UI Service
  - Add Task Service
  - Get Task Service
  - Delete Task Service
- Helm charts used for templated deployments
- Application Gateway Ingress Controller (AGIC) for ingress
- Host-based routing using custom domains

---

** ### 🗄️ Database **

- Azure SQL Database used as backend storage
- Secure connection via environment variables and Helm values
- Database details abstracted from application code

---

** ## 📂 Repository Structure **

.
├── .github/workflows # CI pipelines (build & push)
├── argocd # Argo CD application manifests
├── gitops/dev # Environment-specific values
├── helm/taskOps # Helm charts
│ ├── templates # Deployments, services, ingress
│ ├── values.yaml
│ ├── ProdValues.yaml
├── services # Microservices source code
│ ├── taskOps-add-task
│ ├── taskOps-get-task
│ ├── taskOps-delete-task
│ └── taskOps-ui
├── terraform # Infrastructure as Code
│ ├── environments
│ └── modules
└── README.md

---

** ## 🔑 Key DevOps Concepts Demonstrated **

- Terraform Modules & Environment Separation
- GitHub Actions with workflow_dispatch
- Docker image lifecycle management
- GitOps with Argo CD
- AKS + AGIC ingress
- Helm-based Kubernetes deployments
- Secure database integration
- Cloud-native microservices architecture

---

** ## 🎯 Outcome **

This project simulates a real-world enterprise DevOps pipeline where:
- Infrastructure is fully automated
- Application delivery is Git-driven
- Deployments are secure, scalable, and auditable
- Manual intervention is minimized

---

** ## 👨‍💻 Author **

**Arpit Yadav**  
DevOps Engineer | Cloud & Automation Enthusiast  

GitHub: https://github.com/arpitrao7777  
LinkedIn: https://www.linkedin.com/in/arpit-yadav-786b1622b
