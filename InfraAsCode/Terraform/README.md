# Terraform Best Practices

1. Manipulate state only through TF commands - Do not change TFState file
2. Always set up a shared remote state - S3 etc.
3. Use state locking for multiple DevOps members
4. Back up your state files 
5. Use 1 state per environment - DEV, TEST, PRD separate
6. Host TF Scripts in Git Repo
7. Continuous Integration for TF Code
8. Apply TF only through CD pipelines 
9. Use remote state with versioning and locking;
10.  Use workspace for multiple environments;
11. Use for_each instead of count if it's possible;
12. Never save TF state files in git, they can contain sensitive information in plain text 
13. Do not store secrete in main.tf 
14. Have main.tf, variable.tf, output.tf and provider.tf

#  Terraform Commands

1. Terraform -v
2. Terraform init
3. Terraform apply
4. Terraform plan
5. Terraform destroy -target 
6. Terrafrom output
