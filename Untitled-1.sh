



CLuster name
Role eks cluster
Public

Node group name
Role eks node group 
AMI
instance type/on-demand
Disk
Node group size
Node group subnet

Fargare profile name
Role eks fargare pod profile
subnet (only private subnaet)


==============================
From youtube video

create eks vpc - using the s3 link
aws cloudformation create-stack --stack-name eksvpc --template-body file:///Users/karthick/Documents/DevOps/WorkSpace/amazon-eks-vpc-private-subnets.yaml --region ap-southeast-1

Role - eks cluster (EKS) {eks cluster policy} & eks node group (EC2) {container registery readonly, eks cni policy, eks worker node policy}

============
#!/bin/bash
sudo yum -y update
sudo yum -y install wget

#CodeDeply Agent
sudo yum -y install ruby
cd /home/ec2-user
wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status
sudo chkconfig codedeploy-agent on
sudo yum install -y python-pipsudo pip install awscli 

# Jenkins
sudo yum update
sudo wget -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install java-17-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Docker
sudo yum install -y yum-utils
sudo yum install docker
sudo service docker start
sudo chkconfig docker on
sudo service docker status

# Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform