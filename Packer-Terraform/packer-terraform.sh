#!/bin/bash
set -x

cd packer

# run packer
#packer  build packer-template.json

# identify the region
region=`grep region packer-template.json  | cut -d ":" -f 2 | cut -d '"' -f2`

# define the iam  before filtering
X=`AWS_PROFILE=default packer build packer-template.json |grep -w "$region:"`

# define the iam  after filtering
AMI_ID=`echo $X |awk '{print $2}' `

# edit this IAM in terrafomr  amivar file
echo 'variable "AMI_ID" { default = "'${AMI_ID}'" }' > ../terraform/amivar.tf

# run terraform plan
cd ../terraform

terraform init

# plan terraform
terraform plan --out=plan.out


# run terraform apply
terraform apply --auto-approve plan.out

#sleep 5
#echo > amivar.tf
#echo > plan.out
