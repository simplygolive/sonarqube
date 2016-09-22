# Analysing source code

* http://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner
* http://docs.sonarqube.org/display/SONAR/Analysis+Parameters

## Install scanner (ubuntu)

```shell
#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
mkdir /opt/sonar-scanner
pushd /opt/sonar-scanner
  wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.8.zip
  unzip sonar-scanner-2.8.zip
  mv sonar-scanner-*/* ./
  rm -rf sonar-scanner-*

  # edit /opt/sonar-scanner/conf/sonar-scanner.properties:
  # * url
  # * default encoding

  # edit environment
  export PATH=$PATH:/opt/sonar-scanner/bin
popd
```

## Create project

```shell
uri=https://test-sonarqube.corp-eu1.internal.improbable.io
name=worker_sdk_cpp
key=$name
curl -u "<USER TOKEN WITH execute analysis permission>:" "$uri/api/projects/create" -XPOST -d "key=$key" -d "name=$name"
```
