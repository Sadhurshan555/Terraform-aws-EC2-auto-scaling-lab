# 🚀 AWS EC2 Auto Scaling Infrastructure with Terraform

## 📖 Overview

This project demonstrates how to provision a highly available and scalable web application infrastructure on **Amazon Web Services (AWS)** using **Terraform**.

The infrastructure follows Infrastructure as Code (IaC) best practices by automating the deployment of networking, security, compute, and load balancing components.

This project was built as part of my Cloud Engineering portfolio to gain hands-on experience with AWS, Terraform, Auto Scaling, and cloud infrastructure automation.

---

## 🏗️ Architecture

```

                    Internet
                         │
                         ▼
           Application Load Balancer
                         │
                  Target Group
                         │
              Auto Scaling Group
             ┌───────────┴───────────┐
             ▼                       ▼
      EC2 Instance             EC2 Instance
      Apache Web Server        Apache Web Server

```

---

## ☁️ Services Used

- Amazon EC2
- Auto Scaling Group (ASG)
- Launch Template
- Application Load Balancer (ALB)
- Target Group
- Security Groups
- Amazon VPC (Default)
- Amazon Subnets (Default)
- Amazon Linux 2023 AMI
- Terraform
- Git & GitHub

---

## 📂 Project Structure

```

terraform/
│
├── provider.tf
├── versions.tf
├── variables.tf
├── data.tf
├── security.tf
├── launch-template.tf
├── autoscaling.tf
├── alb.tf
├── outputs.tf
├── userdata.sh
└── infrastructure-diagram.svg

```

---

## ⚙️ Deployment Workflow

Terraform performs the following steps:

1. Initializes the AWS provider
2. Retrieves the default VPC
3. Retrieves the default subnets
4. Retrieves the latest Amazon Linux 2023 AMI
5. Creates Security Groups
6. Creates a Launch Template
7. Creates a Target Group
8. Creates an Application Load Balancer
9. Creates an HTTP Listener
10. Creates an Auto Scaling Group
11. Launches EC2 instances
12. Executes the User Data script
13. Installs Apache Web Server
14. Displays deployment outputs

---

## 🔐 Security

Two Security Groups are used:

### Load Balancer Security Group

Allows:

- HTTP (Port 80)
- Source: `0.0.0.0/0`

### EC2 Security Group

Allows:

- HTTP (Port 80)
- Source: Application Load Balancer only

This ensures EC2 instances are **not directly exposed to the internet**, following the **Principle of Least Privilege**.

---

## 🚀 Auto Scaling Configuration

| Setting | Value |
|----------|-------|
| Minimum Capacity | 2 |
| Desired Capacity | 2 |
| Maximum Capacity | 4 |

The Auto Scaling Group automatically replaces unhealthy instances and maintains the desired number of servers.

---

## 🌐 Load Balancing

The Application Load Balancer distributes incoming HTTP traffic across multiple EC2 instances.

Benefits include:

- High Availability
- Fault Tolerance
- Automatic Traffic Distribution
- Health Checks

---

## 📜 User Data

Each EC2 instance automatically executes a bootstrap script during launch that:

- Updates the operating system
- Installs Apache Web Server
- Starts the Apache service
- Enables Apache on boot
- Creates a sample web page

No manual server configuration is required.

---

## 📦 Terraform Commands

Initialize Terraform

```bash
terraform init
```

Validate Configuration

```bash
terraform validate
```

Preview Changes

```bash
terraform plan
```

Deploy Infrastructure

```bash
terraform apply
```

Destroy Infrastructure

```bash
terraform destroy
```

---

## 📊 Skills Demonstrated

- Infrastructure as Code (IaC)
- Terraform
- AWS EC2
- Auto Scaling
- Application Load Balancer
- Launch Templates
- Security Groups
- Cloud Networking
- Automation
- Git Version Control
- Cloud Architecture

---

## 💡 Future Improvements

Planned enhancements include:

- HTTPS using AWS Certificate Manager (ACM)
- Route 53 DNS Integration
- CloudWatch Monitoring & Alarms
- Remote Terraform State using S3
- DynamoDB State Locking
- GitHub Actions CI/CD Pipeline
- Terraform Modules
- Multi-Environment Workspaces (Dev/Test/Prod)

---

## 🎯 Learning Outcomes

Through this project I gained practical experience with:

- Deploying cloud infrastructure using Terraform
- Designing highly available architectures
- Implementing Auto Scaling
- Configuring Application Load Balancers
- Automating server provisioning with User Data
- Applying cloud security best practices
- Managing infrastructure using Git and GitHub

---

## ⭐ Repository Purpose

This repository is part of my Cloud Engineering portfolio and demonstrates hands-on experience with AWS, Terraform, Infrastructure as Code, and cloud automation. It is intended for learning, experimentation, and showcasing practical cloud engineering skills.
