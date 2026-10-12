# Cloud-Native Voting Application

## Project Overview

This project demonstrates an end-to-end DevOps implementation
using an existing microservices-based voting application.

The application consists of five services:

1. Vote - Python
2. Redis - In-memory vote storage
3. Worker - .NET
4. PostgreSQL - Persistent database
5. Result - Node.js

## DevOps Technologies

- Git and GitHub
- Docker
- Docker Compose
- Docker Hub
- Kubernetes
- Jenkins
- GitHub Actions

## Project Objectives

1. Containerize the application using custom Dockerfiles.
2. Deploy all services using Docker Compose.
3. Publish container images to Docker Hub.
4. Deploy the application to Kubernetes.
5. Implement a Jenkins CI/CD pipeline.
6. Implement GitHub Actions for pull-request validation.

## Project Structure

- app/ - Application source code
- docker/ - Dockerfiles
- kubernetes/ - Kubernetes manifests
- jenkins/ - Jenkins pipeline
- scripts/ - Automation scripts
- docs/ - Documentation
- .github/workflows/ - GitHub Actions

## Current Status

Stage 0: Project initialization