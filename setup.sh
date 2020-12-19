security_group=$(ec2-metadata -s | cut -d " " -f 2);
aws ec2 authorize-security-group-ingress --group-id sg-051a14e6a9b5bf52d --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-051a14e6a9b5bf52d --protocol tcp --port 5000 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-051a14e6a9b5bf52d --protocol tcp --port 8080 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-051a14e6a9b5bf52d --protocol tcp --port 8081 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-051a14e6a9b5bf52d  --protocol tcp --port 2377 --cidr 0.0.0.0/0