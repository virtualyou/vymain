# MariaDB
MySQL, a previously free-to-use relational database, is not being used during 
VirtualYou development. MariaDB remains open-source and uses the MySQL dialect. 
This README outlines how to run a Docker container where MariaDB can be used 
for local development as a relational SQL database.

## Dependencies
- Docker
- DockerHub (see note 1 below)

## Run MariaDB as a Docker container

Run via Docker Compose

We are assuming that you are already familiar with Docker. If not please visit
https://docker.com

Included in the `vytools` repo is a script `bin/setup.sh` and that script has an
option `setup.sh --compose` to copy `docker-compose` from `vydevops` into a new 
directory `${VY_PROJECTS}/docker`. The file `docker-compose.yaml` may require some
hand-work.  

Once, the docker-compose is in place, you can run just the database by adding `db`,
the service name to the end of the command. This only runs the `db` service. You
may want to run other services but that requires 1) you to run them all or 2) specify
each service on the command-line. In this case, we are running just the database.

```bash
cd ${VY_PROJECTS}/vydevops/docker
docker-compose up -d db

# or if vytools is setup correctly use the docker-compose alias in any folder
# and ...

dc up db
```

This will execute the MariaDB server in a docker container for your local 
development and testing. Port 3306 is exposed to localhost so you can use
a DB client tool to inspect schemas and interact with the database using SQL.

Any needed SQL has been added to the `vydata` repo and a folder `ddl/` . 

#### Testing the server
Using any MySQL database client, you will need the hostname e.g. localhost, 
port 3306, the user root, and password `mariadbAdmin123`. Naturally, this 
information would NEVER be used in any hosting environments. It is here for 
your support during development of VirtualYou and to make things consistent
and easy.

#### Stopping the server

Stop and remove the container
```
cd ${VY_PROJECTS}/vytools/docker
docker-compose rm -fsv db
```
You can just `ctrl-c` but just be aware of the artifacts existing on your 
machine. Again, visit https://docker.com for more information. 

## Notes
1. DockerHub is used to hold all of the VirtualYou images used in production.