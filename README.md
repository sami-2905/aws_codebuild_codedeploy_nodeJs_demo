# aws_codebuild_codedeploy_nodeJs_demo
<<<<<<< HEAD
#summary - at first the image was created of original code and pushed to ECR, then the task definition was created. Then ECS cluster was created and inside it service was created that will deploy the task on EC2 instance. Later, to automate the process, that whenever there is some change in the code and the latest image was pushed to ECR, it will automatically get deployed on EC2 through ECS automation.

=======
>>>>>>> c7ddfb9b2746215bbd328f8abda8ae1bece9e6a0
This repository contains sample codes to work with AWS 

This Project build_script directory contains build related script, check buildspec.yml file I have integrated the same. 

Deployment related scripts are in deployment_scripts directory, check appspec.yml file. 


This is a node.js project same, but change config as per your project requirement 


In codebuild.yml file in post build phase, line:
      - aws deploy push --application-name "${CODE_DEPLOY_APPLICATION_NAME}" --s3-location "s3://${CODE_DEPLOY_S3_BUCKET}/codedeploydemo/app.zip" --ignore-hidden-files --region us-west-2

You can enavironment variable in code build : CODE_DEPLOY_APPLICATION_NAME, CODE_DEPLOY_S3_BUCKET and the value will reflect in the command. 

Check Previous Videos to make sense of this implementation:



Keep learning , Keep improving 


aws deploy push --application-name "${CODE_DEPLOY_APPLICATION_NAME}" --s3-location "s3://${CODE_DEPLOY_S3_BUCKET}/codedeploydemo/app.zip" --ignore-hidden-files --region us-west-2


Data that need to be set up in user data while launching instance in order to install code deploy agent in ec2 instance on boot

#!/bin/bash
sudo apt-get update -y 
sudo apt-get install ruby -y
sudo apt-get install wget -y

cd /home/ubuntu

wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto


node-app-youtube-demo


<<<<<<< HEAD
aws deploy push --application-name NodeAppServerDeployment --s3-location "s3://node-app-youtube-demo/codedeploydemo/app.zip" --ignore-hidden-files 
=======
aws deploy push --application-name NodeAppServerDeployment --s3-location "s3://node-app-youtube-demo/codedeploydemo/app.zip" --ignore-hidden-files 
>>>>>>> c7ddfb9b2746215bbd328f8abda8ae1bece9e6a0
