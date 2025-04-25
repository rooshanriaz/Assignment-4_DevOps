#!/bin/bash
echo "Initializing Terraform..."
terraform init
echo "Applying Terraform..."
terraform apply -auto-approve
echo "Building Docker Image..."
docker build -t rooshanriaz/assignment-4_devops:latest ./app
sudo echo "Pushing Docker Image to Docker Hub..."
sudo docker push rooshanriaz/assignment-4_devops:latest
echo "Deployment Complete!"

