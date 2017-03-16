# Terraform-Linux instance

This instance will run Amazon Linux (similar to RHEL/Centos 6)

##First:

Change terraform.tfvars - these 3 values need changing to something unique:
```
key_name = "abdulkey"
instance_name = "abdulinstance"
security_group_name = "abdulsg"
```

##Next:

terraform fmt
terraform plan
terraform apply

##Finally:

The instance IP is given as an output. Wait for the instance to be ready.

To SSH in:

For Windows:
- Use demokey.ppk in the Keys directory to SSH into the instance via Putty.
- Ensure you've entered the ec2@*instanceip* the box and open the +SSH, click Auth and configure the demokey.ppk file.

If you get stuck check this link: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html

For Linux/Mac:
- chmod 400 Keys/demokey.pem
- use "ssh -i Keys/demokey.pem ec2-user@*instanceip*"
