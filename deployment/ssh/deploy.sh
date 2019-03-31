#!/bin/bash

HOST="13.58.17.245"
USER="ec2-user"
KEY="deployment.pem"

ssh -i $KEY $USER@$HOST \
    "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8888 vanesagcdocker/cloud-lab"