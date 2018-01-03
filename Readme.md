# Hello World Jenkins

## Introduction

Hello World to Jenkins in Docker with pipelines

## Contents

- [Usage](#usage)
- [CLI](#cli)

## Usage

```bash
docker-compose up -d
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword | pbcopy

# Paste the string into initial password in here
open http://localhost:8080/
```

- Go through the UI and allow for cli usage
- Get the token for the admin user so you can use it in the auth later


## CLI

```bash
# Get your IP Address
ipconfig getifaddr en0 | pbcopy

# Start a java container
docker run --rm -it --name jenkins-cli java:latest bash
export IP_ADDRESS=<PASTE HERE>
export ADMIN_TOKEN=<PASTE HERE>

# Download the cli from the running jenkins server
curl http://$IP_ADDRESS:8080/jnlpJars/jenkins-cli.jar > jenkins-cli.jar

# List plugins
java -jar jenkins-cli.jar -s http://$IP_ADDRESS:8080/ -auth admin:$ADMIN_TOKEN list-plugins
```
