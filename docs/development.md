# Development

All development begins on a local system, laptop, workstation, or any environment that's
NOT the production hosting environment.

VirtualYou is currently being developed by David L Whitehurst on a laptop and a workstation.

The current architecture consists of multiple node-express API or backend data providers 
that source their data to a Typescript Vite React application called `vite-mvp`. This app
will be used to show the VirtualYou Minimum Viable Product (MVP) to the public.

The APIs and UI will ultimately be hosted on a managed Kubernetes platform in a home in 
North Carolina, USA. Slowly, various components are already being introduced to the public
internet.

Running multiple node servers in Linux terminal windows gets to be a hassle, so by keeping
the UI (Vite) separate from a collection of homogeneous APIs lends itself well to focus on
the API development as the product comes together and also each can be added to a file 
`docker-compose.yaml` so that each API can be run in the foreground/background using a 
single command. Also, selected APIs can be run without others to save on system resources
if needed. And, the docker compose can be used to just run the database by itself.

## Initial Setup
Before doing any VirtualYou development, open a new file and drop the below contents into
your editor creating a bash shell script called `bootstrap.sh`. An example is provided in
this repository. You can set the project directory to whatever you want, but you need to 
clone `vytools` and set the tools `bin` path on your `PATH`. The goal here is to 1) choose a
top-level project directory and 2) get `vytools` in place and on your `PATH`.

```bash
#!/bin/bash

# you're new VirtualYou project directory
mkdir ~/development/virtualyou

# get VirtualYou tools
cd ~/development/virtualyou
git clone git@github.com:dlwhitehurst/vytools.git

# update PATH with tools bin directory
echo "export PATH=$PATH:/home/david/development/vytools/bin" >> ~/.bashrc
source ~/.bashrc
```

NOTE: I created this script in `~/development/sandbox` so that I could tweak the script and test
things prior to destroying my Windows System Linux (WSL Ubuntu 22.04).

## Docker Compose Use and Instructions
Before docker compose is used, `docker` the executable must be installed on your machine.
Once available, create a folder outside of the cloned repos for use with Docker. The 
database service uses a volume mount and you'll want to keep (persist) your data as you
work.

```bash
cd ~/
mkdir docker
cd docker
cp ~/development/vymain/docker-compose.yaml .
```
Run docker-compose from the same folder always and in isolation of the cloned VirtualYou
repositories.