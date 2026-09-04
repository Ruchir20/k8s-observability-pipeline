# Kubernetes Observability Pipeline

A Kubernetes observability pipeline built on AWS EKS using Terraform, Vector, and OpenObserve.

## Architecture

```text
                         AWS
                          |
                    +-----------+
                    |    EKS    |
                    |           |
                    |  4 Nodes  |
                    +-----+-----+
                          |
                    +-----v-----+
                    |   Vector  |
                    | DaemonSet |
                    +-----+-----+
                          |
              +-----------+-----------+
              |                       |
         Kubernetes Logs        Dummy Logs
              |                       |
              +-----------+-----------+
                          |
                    +-----v-----+
                    |OpenObserve|
                    +-----------+
                     /         \
              Logs Dashboard  Metrics Dashboard

## Prerequisites

Install and configure:

- AWS CLI
- Terraform
- kubectl
- Helm
- Git
- AWS credentials with permissions to create the required EKS infrastructure

Verify the tools:

```bash
aws --version
terraform --version
kubectl version --client
helm version
git --version
