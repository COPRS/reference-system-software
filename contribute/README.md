:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Contribute to the project

## Read the rules
First you want to read the rules of the CI/CD chain and understand how we work :  
[RULES.md](RULES.md)

## See how to organise your repository
You shall check how to organise your GitHub repository to respect the homogeneity :  
[REPOSITORY_ORGANISATION.md](REPOSITORY_ORGANISATION.md)

## Check the examples
You may want to check the examples we provide to build your component using our tools :  
[EXAMPLES.md](EXAMPLES.md)

## Request access
Last but not least, you shall request access to this organization.
In order to do so, please open a new issue of type "Access request" on this repository and provide the informations needed.

## How to containerize your application for Reference System (RS)
Applications are running on Reference System inside containers.  
Hence, the RS continuous integration workflow requires you to provide a Dockerfile along your application source code.
A dockerfile describes the steps to build a container image.
If you are not familiar with Dockerfiles, please refer to the following documentation.  
https://docs.docker.com/engine/reference/builder/#format
### RS constraints
Reference System expect the image produced to meet the following requirements:
1. Consider the [Official Ubuntu docker image version **20.04 LTS**](https://hub.docker.com/_/ubuntu) as base image for your containers.  
    ```Dockerfile
    FROM ubuntu:focal-20211006
    ...
    ```
    It is important to use a precise version tag instead of a generic one like latest to overcome docker tags mutability.
2. Install any dependencies you need.
    For eg. install java :
    ```Dockerfile
    ...
    RUN apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get -y install default-jre-headless && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/*
    ...
    ```
3. Application must run as a non root user.  
    The security context policies forbid containers with root user to run.
    ```Dockerfile
    ...
    USER 1001
    # Do not forget to adapt open ports for non root users
    # as ports below 1024 are considered privileged
    # and normal users are not allowed to open them.
    # For example:
    # EXPOSE 8080
    ...
    ```
4. The application **must not rely on privilege escalation**.  
    Requesting a privilege escalation is forbidden by the security execution context policies.
### Best practices to write a Dockerfile
Reach the following links for a list of best practices for writing Dockefiles.
- https://github.com/juan131/dockerfile-best-practices/tree/master
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
