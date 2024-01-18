# vymain
LICENSE: Apache License 2.0

## Abstract
This repository is for the documentation and administration of the VirtualYou 
project. The project will be defined as a Software as a Service (SaaS) project.
The SaaS is accessed via https://app.virtualyou.info and public documentation via
https://site.virtualyou.info.

## Repositories
The hosted platform is created with the help of many software repositories. These 
repos are listed here for reference into the code that drives the application of our
SaaS product VirtualYou.

We suggest that you introduce yourselves to the VirtualYou project using the repos
given in the order they are presented here.

### Project Parent
- https://github.com/virtualyou/vymain (Begin)

### Microservices
- https://github.com/virtualyou/userauth
- https://github.com/virtualyou/personal
- https://github.com/virtualyou/medical
- https://github.com/virtualyou/financial
- https://github.com/virtualyou/administration 
- https://github.com/virtualyou/legal
- https://github.com/virtualyou/business
- https://github.com/virtualyou/notification
- https://github.com/virtualyou/speech

### SaaS Access
- https://github.com/virtualyou/app (React Application)

### Support
- https://github.com/virtualyou/vytools
- https://github.com/virtualyou/vydata
- https://github.com/virtualyou/vydevops

## SaaS
The VirtualYou SaaS product is a collection of software into Docker containers
and wired to work together with each other on a Kubernetes platform. While the
product is presented to the customer via a React application, the real work is
handled via orchestrated microservices behind the HTML presentation.

This application currently utilizes Typescript for most of the software in use
however, Python is used for the `speech` API only because we needed Python to
create static audio for the AI speech-recognition that actually uses 
Javascript/Typescript or an NPM library.

## Microservices
Currently, the API microservices are NodeJS-Express projects written in Typescript
and protected with JWT for authentication and authorization. This does not satisfy
a best-practice vision of a REST API application network, but security-wise it's
okay for now. These microservices are all Docker images and can be hosted and tested 
in isolation as long as a database and auth services are available.

## Want to Help?
It all starts with a bash shell script called `bootstrap.sh`. Read more here.
https://github.com/virtualyou/vymain/blob/main/docs/development.md
