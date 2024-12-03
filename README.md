# IAC CI & CD Project

This projects manages roles and resources used on the API project: https://github.com/lucasnfarias/rocketseat.ci.cd.api

# Roles and Resources

- **Resources:**
  - **S3 bucket:** To persist and protect the terraform state used on the API project pipeline, we used an S3 bucket as terraform backend
  - **ECR:** as a container registry to manage the API docker image
  - **App Runner:** deploy the ECR image container as a service
- **Roles**:
  - **ecr-role:** to read and write on the ECR and have access to App Runner (used on api ci pipeline)
  - **app-runner-role:** to deploy the ECR image on App Runner (used on api ci pipeline)
  - **tf-role:** role with broader access to IAM, ECR and S3 so it could perform the `terraform apply -auto-approve` (used on this project pipeline)
