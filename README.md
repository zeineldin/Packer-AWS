
### This project is to use packer to create AMI ( based on Ubuntu) containers nginx

```packer build -var-file=variables.json packer-template.json```


# to build the AMI using AMAZON Profiles 

```AWS_PROFILE=default packer build packer-template.json```

#example of ~/.aws/credentials 

[default]
aws_access_key_id = XXXXXXXXXXXX
aws_secret_access_key = ZZZZZZ+YYYYYYYYYY
