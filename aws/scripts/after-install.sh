#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeployexample-webappdeploymentbucket-60810m5x57v7/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps
