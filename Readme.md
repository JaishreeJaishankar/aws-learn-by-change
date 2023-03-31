
# Two-Tier Web Application Deployment on AWS

This repository contains the code for building a Two-Tier Web Application on AWS while following the AWS Well-Architected Framework. The application is built using Terraform and deployed on AWS using Docker, Kubernetes, ECR, ECS, Fargate, S3, VPC, IAM Roles, ACM, Secrets Manager, VPC Endpoints, Route53, RDS, ELB and ASG, CloudWatch, and OIDC.

## Project Description

The Two-Tier Web Application on AWS is architected with a web server and a database hosted in private subnets in multiple availability zones to ensure security and reliability. The autoscaling group and load balancer are deployed to ensure scalability and performance efficiency. Two CICD pipelines are implemented using GitHub Actions workflows ensuring operational excellence. The Continuous Integration and Continuous Deployment pipeline for the application includes building and pushing a new Docker Image on ECR for every change and automatic redeployment in ECS.

The CI/CD for infrastructure is performed using tflint, tfsec, and custom workflows. VPC Endpoints, Certificate manager, IAM roles abiding the least privilege principle, Secrets manager, and OIDC are used to ensure the security of the architecture.

The project handles all the **AWS Well-Architected pillars** as follows:

### Operational Excellence

The project implements two CICD pipelines using GitHub Actions workflows, which ensure that the application is continuously integrated, tested, and deployed with minimal manual intervention. It also leverages CloudWatch to monitor and log application and infrastructure performance, and to alert the team of any issues.

### Security

The project uses VPC Endpoints, Certificate Manager, IAM roles abiding the least privilege principle, Secrets Manager, and OIDC to ensure the security of the architecture. The web server and database are hosted in private subnets to minimize the attack surface, and traffic is only allowed through the load balancer. Additionally, the application is deployed using Docker containers, which provide a secure and isolated environment.
### Reliability

To ensure the reliability of the application, the project hosts the web server and database in private subnets in multiple availability zones, which allows for failover in case of an outage. It also implements an autoscaling group and load balancer to distribute traffic and handle increased load. The project also uses RDS for database backups, which ensures that data is protected and recoverable in the event of a failure.

### Performance Efficiency

The project uses autoscaling group and load balancer to ensure that the application can handle increased traffic and load, and that the resources are utilized efficiently. It also leverages Fargate to run the containers, which allows for the efficient allocation of resources. Additionally, the project uses CloudWatch to monitor and optimize resource utilization and performance.

### Cost Optimization

To optimize costs, the project leverages Fargate, which allows for the efficient use of resources and reduces the need for expensive infrastructure. It also uses the autoscaling group to ensure that resources are only used when needed, and the project uses AWS services like S3 and Route53, which are cost-effective and provide reliable and scalable storage and DNS services. Additionally, the project leverages CloudWatch to monitor and optimize resource utilization and costs.
Prerequisites

**Before deploying the Two-Tier Web Application on AWS, you will need to have the following tools and services set up:**

    AWS Account
    Terraform
    Docker
    GitHub Account

## Getting Started

To get started with the deployment of the Two-Tier Web Application on AWS, follow these steps:

    Clone this repository to your local machine.
    Set up your AWS credentials and configure Terraform backend.
    Configure the variables in the terraform.tfvars file.
    Initialize Terraform by running the command terraform init.
    Plan the infrastructure changes by running the command terraform plan.
    Apply the changes to deploy the infrastructure by running the command terraform apply.
    Verify the deployment by accessing the application through the ELB endpoint.

## Contributing

If you would like to contribute to this project, please feel free to fork this repository, make changes, and submit a pull request.


## License

[MIT](https://choosealicense.com/licenses/mit/)

