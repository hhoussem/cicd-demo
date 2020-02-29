# CI/CD demo project

## Description 
This is a small project that creates a Spring Boot application

It uses Jenkins (Jenkinsfile) to :

- Checkout the code from Github

- Build the app, launch test with Maven

- Create the Docker image

- Push the Docker image to Docker Hub

- Run the create image in Docker


## How to use

As the project is not completed, we will deploy app on Docker without using Jenkins

 run `ops/docker_build_start.sh`
 
 go to http://localhost:9999/
