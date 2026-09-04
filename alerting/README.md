# Alerting

This project implements alerting on top of the Kubernetes observability pipeline.

## Architecture

```text
Vector
  |
  v
OpenObserve
  |
  | Alert condition
  v
High_Error_Rate
  |
  | HTTP POST
  v
Kubernetes Webhook Receiver
