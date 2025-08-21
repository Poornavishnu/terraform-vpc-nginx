## Getting Started

### Prerequisites

- Terraform ≥ 1.8.0
- AWS CLI with credentials configured


# Terraform VPC with NGINX on EC2

This project provisions a complete AWS infrastructure using Terraform. It includes a VPC with both public and private subnets across multiple availability zones, and launches an EC2 instance running NGINX in a public subnet with HTTP access enabled.

## Features

- Custom VPC (`10.0.0.0/16`)
- 3 Public subnets across different AZs
- 3 Private subnets across different AZs
- Internet Gateway for public subnet access
- NAT Gateway (not attached to private route tables)
- EC2 instance with:
  - Public IP
  - Security Group allowing port 80 (HTTP) and port 22 (SSH from your IP)
  - User data to install and run NGINX
- S3 backend for remote state
  - Versioning enabled
  - Encryption enabled
  - Destroy protection enabled
- DynamoDB table for state locking
- Fully parameterized using variables
- No third-party modules used

