# My Docker aliases / cheat-sheet
# --
# by Dragoljub Bogićević Apr 8 2020 ・ 2 min read
# https://dev.to/bogicevic7/my-docker-aliases-cheat-sheet-4bo9
# 
# Contents
# General
# Images
# Containers
# Networks
# Volumes
# Docker-Compose
# Note about pattern I tried to follow for aliases:
# 
# for docker commands first letter is always d, for docker compose is dc
# if command is related to images then next letter of alias is i, for containers is c and so on...
# following this pattern I found it pretty easy to remember all aliases
# 

# some common general aliases
alias ll='ls -latF | more'
alias hi='history'
alias hs='history 31 | head -n 30'
alias sc='source ~/.bashrc'
alias rr='sudo systemctl restart redis.service'
alias cr='code /etc/redis/redis.conf'
alias nr='sudo netstat -lnp | grep redis'
alias map='sudo sshfs -o allow_other,default_permissions,IdentityFile=/home/tmc/.ssh/id_rsa root@137.184.96.25:/mnt/ap /mnt/ap'
alias ap='cd /mnt/ap/ap'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias kubens='kubectl config set-context --current --namespace ' 
# alias kubectx='kubectl config use-context ' 

# alias k=kubectl
# complete -F __start_kubectl k

# source <(kubectl completion bash)                     # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
# echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.

export DENO_INSTALL="/root/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

export DO_PAT=4663451f0f53469178b5942e09dfef41532c113e27d0decaa537dc52733174cc
export DO_DOMAIN_NAME="needhamrailtrail.org"
export DO_PRIVATE_KEY="Sept-23-2021"
# export ANSIBLE_VAULT_PASSWORD="mypassword"

export MBTA_V2_API_KEY='b59bd77b93e94849a16e21c25ab90349'
export MEDIA_BUCKET_NAME='media-query-mediabucket-9rbalpyrst24'

export AUTH_GITHUB_CLIENT_ID="688e1673c962fa21e3fb"
export AUTH_GITHUB_CLIENT_SECRET="a67c69c48ee4ddf4a0769ab1b41d94532222daed"
# export DOCKER_HOST=ssh://root@162.243.174.58


export INFLUX_HOST=http://localhost:8086/
export INFLUX_TOKEN=o4n-A-Sr5B0r_eDktHaVcNFT6jqM1DSeEUY01Mj26sC7VUZPHEPB2ZqeWnbB7lWfHqgZBZ8KmvHBMFLAwwO5Zw==
export INFLUX_ORG=myOrg
export INFLUX_BUCKET="telegraf"

alias python=python3
alias pip=pip3

# Terraform
alias tf='terraform'
alias tfa='time terraform apply && say "Terraform has completed"' # The 'say' command may not be available on all *nix systems.
alias tfd='terraform-docs'  # 'terraform-docs' command generates documentation from your TF code
alias tfg='terraform graph -draw-cycles | dot -Tpng > graph.png; open graph.png'
alias tfi='terraform init --upgrade'
alias tfp='echo running terraform get update then plan; terraform get -update && terraform plan -out /tmp/zplan'
alias tfv='terraform validate'

# General
alias dve="docker -v"
alias dl="docker login --username=dragol" 
# Explanation
# dve - prints out current docker version
# dl - docker login, will prompt you for password

# Images
alias dil="docker images"
alias dip="docker image prune -f"
# Explanation
# dil - list all docker images available on my machine
# dip - remove all dangling images -f is flag for force

# Containers
alias dcl="docker ps"
alias dcla="docker ps -a"
alias dcp="docker container prune -f"
alias dci="docker inspect"
alias dciip="docker inspect -f \"{{ .NetworkSettings.IPAddress }}\""
alias dcs="docker start"
alias dcd="docker down"
alias dcr="docker restart"
# Explanation
# dcl - list running containers
# dcla - list all containers
# dcp - remove all dangling containers
# dci - here you need to pass container id in order to get various information about particular container
# dciip - returns container IP address
# dcs - here you need to pass container id in order to start container
# dcd - here you need to pass container id in order to stop container
# dcr - here you need to pass container id in order to restart container

# Networks
alias dnl="docker network ls"
alias dni="docker network inspect"
alias dnrm="docker network rm"
alias dnp="docker network prune -f"
# Explanation
# dnl - list networks
# dni - here you need to pass network id in order to see it's details
# dnrm - here you need to pass network id in order to delete it
# dnp - remove all dangling networks

# Volumes
alias dvc="docker volume create"
alias dvl="docker volume ls"
alias dvrm="docker volume rm"
alias dvp="docker volume prune -f"
alias dvi="docker volume inspect"
# Explanation
# dvc - here you need to pass volume name in order to create it
# dvl - list volumes
# dvrm - here you need to pass volume id in order to delete it
# dvp - remove all dangling volumes
# dvi - here you need to pass volumeid in order to see it's details

# Docker-Compose
alias dcv="docker-compose -v"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build --no-cache"
alias dcc="docker-compose config"
# Explanation
# dcv - prints out docker compose version
# dcu - start docker compose
# dcd - stop docker compose
# dcb - new docker compose build from ground up
# dcc - check if docker-compose.yml file is valid
