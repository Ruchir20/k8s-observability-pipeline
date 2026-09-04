# Kubernetes Observability Pipeline

A Kubernetes observability pipeline built on AWS EKS using Terraform, Vector, and OpenObserve.

## Architecture- https://excalidraw.com/#json=TF9aD4XYDRDwcMQu6WsMg,y22rq-FJ7vNZiuLn7IY3Fw


                    Kubernetes
                        │
                        ▼
                Vector DaemonSet
                  │           │
                  ▼           ▼
                Logs       Metrics
                  │           │
                  └─────┬─────┘
                        ▼
                  OpenObserve
                 /      |      \
                /       |       \
               ▼        ▼        ▼
          Logs DB   Metrics DB   Alerts
               │        │          │
               ▼        ▼          ▼
           Dashboard Dashboard  Webhook


## Prerequisites

Install and configure:

- AWS CLI
- Terraform
- kubectl
- Helm
- Git
- AWS credentials with permissions to create the required EKS infrastructure

Verify the tools:

aws --version
terraform --version
kubectl version --client
helm version
git --version

## Alerting

The project includes an alerting layer using OpenObserve.

### High Error Rate Alert

A scheduled OpenObserve alert monitors the `dummy_logs` stream and
filters records where:

level = error
