# Eko Test Task
This Test Task is to do the following: 

1. Deploy CKAN with Ansible script from Jenkins CI in Docker container format.

CKAN is opensource DMS write with Python https://github.com/ckan/ckan using MySQL and Solr as DB. 

Server setup
	- Write Ansible to prepare the server to ready to deploy CKAN on Ubuntu 16.04 LTS eg. Update latest packages, install docker, deploy CKAN etc.
	
Jenkin setup
	- Run Junkin on Docker container
	- Create Job on Jenkin to ready to deploy CKAN on that server


# Infra Setup:  
- Using Vagrant - Create Server with Docker installed running Jenkins
- Automate Environment: Using Ansible Jenkin Plugin, Run Ansible Playbook to
Provision server with Ubuntu 16.04 LTS and with latest packages
Install Docker
Install CKAN using Docker Image

The tools used to create the test task are:
Vagrant to create the infrastructure for this lab.
GIT for source code management and control
Jenkins to orchestrate the CI/CD pipeline flow
And finally, Ansible to create all infrastructure for this lab and the to provision CKAN.
