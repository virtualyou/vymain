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

###################################################################
# bootstrap.sh
# Copyright (c) 2023 VirtualYou
# License: https://github.com/virtualyou/vymain/blob/main/LICENSE
#

# you're new VirtualYou project directory
mkdir ~/development/virtualyou

# get VirtualYou tools
cd ~/development/virtualyou
git clone git@github.com:virtualyou/vytools.git

# update PATH with tools bin directory
echo "export PATH=$PATH:/home/david/development/virtualyou/vytools/bin" >> ~/.bashrc
source ~/.bashrc
```
This get's our bash tools in place and now we should clone our repos, configure our docker-compose
that consists of our database and external APIs. Considering the shell script above, I created a 
directory called `$VY_PROJECTS` on my development machine. I'm currently using WSL terminals and I
develop on WebStorm and use Datagrip for a database client. I also set an alias `vy` to go to the 
project folder quickly.

After `vtools` is installed and on my `$PATH` I will clone all the repos in the project directory
like so:
```bash
setup.sh --utils
setup.sh --apis
setup.sh --src
```
We now have all the codebase. Let's bring in `docker-compose.yaml`. A `--compose` option is provided
for `setup.sh` script that copies a docker-compose file from the `vymain` (this repo) into a new 
folder it creates at `$VY_PROJECTS/docker`. The option also gets your IP and uses `sed -i` to replace
the `myhost` IPs in the file to your network/internet-facing IP. If it doesn't work for you, just note
that you need to change the IPs in the file for the compose to run properly.
```bash
setup.sh --compose
```
## ENV and Runtime Success
To keep things simple and agile between local and production environments, I have options to manage
the proxy paths, hosts, and cookie domain based on the environment you need the codebase to support.
Two options are provided in `setup.sh` that write hostnames and paths that are needed for local
development and production hosting. These are found with the command `setup.sh --help`.
```bash
Welcome to the VirtualYou development setup utility.

Usage:
  (First make sure that you are git-authenticated to GitHub)
  cd ~/virtualyou  # or where you want the git working directories to live
  setup.sh [options]


Options:
    --shell       Initialize shell environment variables (bash only)
    --utils       Clone the VirtualYou utilities
    --compose     Get docker-compose and setup in isolation
    --apis        Clone the api repos
    --src         Clone the current UI application
    --prep-local  Prepare application for local development
    --prep-prod   Prepare application for production deployment
```
They are `--prep-local` and `--prep-prod`. The script makes changes to the `app` repo (the VirtualYou application)
and the `index.ts` file in `userauth` repo or User/Authentication/Authorization API. The options will
change the app without further modifications but the `userauth` API needs a special versioned docker
image build and this version needs to be set in your local `docker-compose.yaml`. Final configuration
of the cookie session should contain `domain: .virtualyou.info` to use subdomains. Please review the 
script `setup.sh` for the first few uses.

## Running the Application Locally
When everything is setup correctly and each of the options in `setup.sh` have been run, you should be
able to:

```bash
# my alias to projects
vy 

# run docker compose (everything database and APIs) in background
dc up -d 

# change directory to the application
cd src

# run development server
npm run dev
```

NOTE: The docker images should be built and resident on my Docker hub account publicly. Please file
an issue with `vymain` if you're having any problems getting the docker images.