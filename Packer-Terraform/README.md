
### This project is to use packer to create AMI ( based on Ubuntu) containers nginx

```packer build -var-file=variables.json template.json```

# you could also run 

```PACKER_LOG=1 packer build  -var 'aws_access_key=your_key' -var 'aws_secret_key=your_secret' template.json```


## run terrafomr plan
```terrafomr plan```

## apply this plan 
``` terraform apply --auto-approve```
