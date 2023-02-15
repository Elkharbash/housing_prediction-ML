[![CircleCI](https://circleci.com/gh/Elkharbash/housing_prediction-ML.svg?style=svg)](https://app.circleci.com/pipelines/github/Elkharbash/housing_prediction-ML)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
## Getting Started
1. Setting up the environment
 - `python -m venv ~/.devops` to create a virtual environment.
 - `source ~/.devops/bin/activate` to activate the virtual environment.

2. Running the app
 - run `make install` in cli in order to install the necessary dependencies
 - run `hadolint Dockerfile`, It uses an abstract syntax tree (AST) to parse your Dockerfile against predefined rulesets

3. Build the Docker image
 - run `./run_docker.sh` to run the application on docker

4. Upload to docker hub
 - modify the `upload_docker` script with your docker credentials and edit the $dockerpath to include your information.
 - run `./upload_docker.sh` to upload the solution to docker hub

5. K8s Deployment
 - run `minikube start` to the k8s cluster
 - run `/run_kuberenetes.sh` to deploy the solution (docker image) to Kuberenetes
