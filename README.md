# Sample repo that demonstates `output` value

See [this page](https://developer.hashicorp.com/terraform/language/values/outputs) for the reference


# Prerequisite

Install and configure Terraform as per [official documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

# How To

## Clone the repository

```
git clone https://github.com/dmitryuchuvatov/output.git
```

## Go into the directory

```
cd output
```

## Initialize Terraform

```
terraform init
```

You should see the following output:

```
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/random...
- Installing hashicorp/random v3.5.1...
- Installed hashicorp/random v3.5.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## Run Terraform Apply

```
terraform apply
```
Enter **yes** and hit **Enter** to apply the changes:

```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # random_integer.number will be created
  + resource "random_integer" "number" {
      + id     = (known after apply)
      + max    = 4999
      + min    = 1
      + result = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + random_number = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_integer.number: Creating...
random_integer.number: Creation complete after 0s [id=3235]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

random_number = "3235"
```
## Clean Up

```
terraform destroy
```
When prompted, enter **yes** and hit **Enter** to destroy the resources:

```
...

random_integer.number: Destroying... [id=3235]
random_integer.number: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.
```


