# Sonarqube end-to-end

[Sonarqube](https://sonarqube.org) is a code quality management tool. This repo contains the infrastructure automation we use to run it.

## Getting started

### Prerequisites

```shell
brew cask install docker
brew install docker-compose
```

### Locally

```shell
git clone {this repo}
cd {repo}
ci/build.sh
docker-compose up -d
# you know it's ready when
curl http://localhost:9000
# results in 200 OK with sonarqube login page
```
