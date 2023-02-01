[![CircleCI](https://dl.circleci.com/status-badge/img/gh/awadiagne/SKLearn/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/awadiagne/SKLearn/tree/master)

## Project Overview

This project aim is to operationalize a Machine Learning Microservice API. 

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test the project code using linting
* Write a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Add relevant log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment
The whole development process was done on AWS Cloud9 which is more convenient.

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. You can use any name other than devops
```bash
python3 -m pip install --user virtualenv
python3 -m venv .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Launch tests
Make predictions by running the bash script `./make_predictions.sh`

### Files structure
* `.circleci`: contains the YAML file for CircleCI integration config.yml
  * `config.yml`: contains configuration for CirlceCI
* `model_data`: contains the ML model used for predictions
  * `boston_housing_prediction` : the ML model
* `output_txt_files`: project output files for docker and kubernetes
  * `docker_out.txt`: the run_docker.sh script output
  * `kubernetes_out.txt`: the run_kubernetes.sh script output
* `app.py`: the python web app launched to make predictions
* `Dockerfile`: the docker image configuration file
* `make_prediction.sh`: the script used to make a sample prediction for tests
* `Makefile`: the make file for installing and linting the project
* `requirements.txt`: the web application dependencies
* `run_docker.sh`: the script used to build tag and run docker container
* `run_kubernetes.sh`: the script used to pull image and run kubernetes pod for the web app
* `upload_docker.sh`: the script used to upload docker image to Docker Hub
