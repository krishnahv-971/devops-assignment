# DevOps Practical Assignment

This project demonstrates a minimal DevOps pipeline for a sample Node.js web application.

## Features

- CI/CD pipeline using GitHub Actions
- Dockerized application
- Infrastructure as Code using Terraform
- Optional monitoring design with Prometheus/Grafana

---

## Application

A simple Express.js application with:
- `/` endpoint
- `/health` endpoint

---

## 1. CI/CD Setup

Implemented using **GitHub Actions**.

### Pipeline Steps
- Checkout code
- Install dependencies
- Lint
- Test
- Build Docker image
- Simulated deployment

Pipeline file:
```bash
.github/workflows/ci-cd.yml
