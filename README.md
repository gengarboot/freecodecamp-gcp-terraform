# freecodecamp-gcp-terraform
Following a small freecodecamp tutorial for gcp

[Youtube tutorial](https://youtu.be/VCayKl82Lt8)
- Create GCP account
- Enable Compute, Cloud DNS and IAM api
- Create a service account
    - Create servicekey for terraform 
- Install Terraform
- Setup terraform files
    - main.tf (what we run)
    - provider.tf (our provider in this case gcp)
    - variables.tf (our variables we will use in our provider.tf)
    - A local file terraform.tfvars that will contain the values automatically to be use in variables.tf

- Run terraform init to initialize terraform and get a state file
- Run terraform apply