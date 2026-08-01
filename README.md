# End-to-End DevOps CI/CD Pipeline using Jenkins, Docker, Terraform and AWS

## Project Overview

This project is a simple implementation of a DevOps CI/CD pipeline using AWS cloud services and popular DevOps tools. The main objective of this project was to understand how Continuous Integration and Continuous Deployment work in a real-world environment.

In this project, I created a small Node.js application, containerized it using Docker, built a CI/CD pipeline using Jenkins, stored the Docker image in Amazon ECR, and deployed the application on an AWS EC2 instance. I also used Terraform to provision the AWS infrastructure instead of creating resources manually.

This project helped me understand Infrastructure as Code (IaC), containerization, automation, and cloud deployment.

---

## Technologies Used

- Git & GitHub
- Jenkins
- Docker
- Amazon Web Services (AWS)
- Amazon EC2
- Amazon ECR
- Terraform
- IAM
- Node.js
- Ubuntu Linux

---

## Project Structure

```
DevOps-CICD-Pipeline/
│
├── app/
│   ├── Dockerfile
│   ├── package.json
│   ├── server.js
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── internet_gateway.tf
│   ├── route_table.tf
│   ├── security_group.tf
│   ├── ec2.tf
│   └── outputs.tf
│
├── Jenkinsfile
├── README.md
└── .gitignore
```

---

## Project Workflow

The workflow of this project is shown below.

```
GitHub
   │
   ▼
Jenkins Pipeline
   │
   ▼
Docker Build
   │
   ▼
Push Image to Amazon ECR
   │
   ▼
Terraform Infrastructure
   │
   ▼
Launch EC2 Instance
   │
   ▼
Pull Image from ECR
   │
   ▼
Run Docker Container
   │
   ▼
Application Running on Port 3000
```

---

## What I Did

### 1. Created the Application

I created a simple Node.js application that displays a success message when accessed from a web browser.

---

### 2. Dockerized the Application

I wrote a Dockerfile to package the application into a Docker image. This makes the application portable and easy to deploy.

Docker image was built using:

```bash
docker build -t devops-demo-app:v1 ./app
```

---

### 3. Created a Jenkins Pipeline

I configured Jenkins to automatically perform the following tasks:

- Clone the GitHub repository
- Build the Docker image
- Login to Amazon ECR
- Push the Docker image to ECR
- Deploy the application

This helped me understand how CI/CD pipelines automate software delivery.

---

### 4. Stored Docker Image in Amazon ECR

Instead of storing Docker images locally, I pushed the image to Amazon Elastic Container Registry (ECR).

This allows the image to be pulled from any EC2 instance whenever required.

---

### 5. Provisioned AWS Infrastructure using Terraform

Instead of manually creating AWS resources, I used Terraform to provision them automatically.

Terraform created the following resources:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance

Useful Terraform commands:

```bash
terraform init

terraform plan

terraform apply

terraform destroy
```

---

### 6. Deployed the Application

After creating the EC2 instance, I installed Docker, connected it with Amazon ECR using an IAM Role, pulled the Docker image, and started the container.

Commands used:

# Pull the Docker image from Amazon ECR
docker pull 792641153794.dkr.ecr.ap-south-1.amazonaws.com/devops-demo-app:1

# Run the Docker Container
docker run -d \
--name devops-demo-app \
-p 3000:3000 \
792641153794.dkr.ecr.ap-south-1.amazonaws.com/devops-demo-app:1
```

---

## AWS Services Used

During this project, I used the following AWS services:

- EC2
- Amazon ECR
- IAM Role
- VPC
- Internet Gateway
- Route Table
- Security Group

---

## Output

After successful deployment, I accessed the application in my browser using the EC2 Public IP.

```
http://13.206.142.50:3000/
```

Output:

```
DevOps CI/CD Pipeline Running Successfully 🚀
```

---

## What I Learned

Working on this project helped me understand:

- Basics of CI/CD
- How Jenkins automates deployments
- Docker image creation and container management
- Using Amazon ECR as a Docker registry
- Infrastructure provisioning using Terraform
- Deploying applications on AWS EC2
- Using IAM Roles instead of AWS access keys
- Connecting multiple DevOps tools together

---

## Challenges Faced

While working on this project, I faced a few issues such as:

- Docker permission errors
- Jenkins pipeline failures
- IAM permission issues while accessing Amazon ECR
- Terraform configuration errors
- Free-tier instance compatibility issues
- SSH access problems

I resolved these issues by debugging logs, updating IAM permissions, modifying Terraform configurations, and verifying AWS resources.

These challenges helped me gain practical troubleshooting experience.

---

## Future Improvements

Some improvements that can be added later are:

- Add automated testing in the Jenkins pipeline
- Deploy the application using Kubernetes
- Configure HTTPS using a Load Balancer
- Monitor the application using CloudWatch or Prometheus
- Automate deployment whenever new code is pushed to GitHub

---
This project gave me hands-on experience with DevOps tools and AWS cloud services. It helped me understand how different tools like Jenkins, Docker, Terraform, GitHub, and Amazon ECR work together to automate application deployment. This project also improved my understanding of Infrastructure as Code, Continuous Integration, and Continuous Deployment.
