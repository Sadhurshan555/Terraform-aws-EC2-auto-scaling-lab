                                        Internet
                                            │
                                            │ HTTP (80)
                                            ▼
                           ┌──────────────────────────────┐
                           │  Application Load Balancer   │
                           │           (ALB)              │
                           └──────────────┬───────────────┘
                                          │
                                          │
                               Target Group (HTTP)
                                          │
             ┌────────────────────────────┴──────────────────────────┐
             │                                                       │
             ▼                                                       ▼
      ┌───────────────┐                                      ┌───────────────┐
      │ EC2 Instance 1│                                      │ EC2 Instance 2│
      │ Amazon Linux  │                                      │ Amazon Linux  │
      │ Apache Server │                                      │ Apache Server │
      └───────┬───────┘                                      └───────┬───────┘
              │                                                      │
              └──────────────────────┬───────────────────────────────┘
                                     │
                           Auto Scaling Group
                       Min: 2 | Desired: 2 | Max: 4
                                     │
                                     ▼
                           Launch Template
                        (AMI, SG, User Data)
                                     │
                                     ▼
                              Security Group
                          HTTP (80) / SSH (22)

───────────────────────────────────────────────────────────────────────────────

                    Terraform (Infrastructure as Code)
                                   │
                                   ▼
         ┌─────────────────────────────────────────────────────────────┐
         │ provider.tf                                                 │
         │ variables.tf                                                │
         │ security.tf                                                 │
         │ launch-template.tf                                          │
         │ autoscaling.tf                                              │
         │ alb.tf                                                      │
         │ outputs.tf                                                  │
         │ userdata.sh (Installs Apache Automatically)                 │
         └─────────────────────────────────────────────────────────────┘

                                   │
                                   ▼
                              AWS Cloud
