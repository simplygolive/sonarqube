#!/usr/bin/env bash

pushd plugins

  wget --no-clobber https://ci.appveyor.com/api/buildjobs/8k2hqcu3xyyudqd0/artifacts/sonar-fsharp-plugin/target/sonar-fsharp-plugin-1.0.RC4.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-erlang/releases/download/1.2/sonar-erlang-plugin.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-5.3.2.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-css/releases/download/2.0/sonar-css-plugin.jar
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/android/sonar-android-plugin/1.1/sonar-android-plugin-1.1.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-groovy-plugin/sonar-groovy-plugin-1.4.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-4.1.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.14.jar
  wget --no-clobber https://github.com/racodond/sonar-jproperties-plugin/releases/download/2.1.1/sonar-jproperties-plugin-2.1.1.jar
  wget --no-clobber https://github.com/racodond/sonar-json-plugin/releases/download/2.0/sonar-json-plugin-2.0.jar
  wget --no-clobber https://github.com/iwarapter/sonar-puppet/releases/download/1.4/sonar-puppet-plugin-1.4.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-python-plugin/sonar-python-plugin-1.6.jar
  wget --no-clobber https://github.com/hantuzun/sonar-scalastyle/releases/download/v0.0.1-SNAPSHOT/sonar-scalastyle-plugin-0.0.1-SNAPSHOT.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-web-plugin/sonar-web-plugin-2.4.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-xml-plugin/sonar-xml-plugin-1.4.1.jar


  # viz / widgets
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-motion-chart-plugin/1.7/sonar-motion-chart-plugin-1.7.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-sonargraph/releases/download/sonar-sonargraph-plugin-3.5/sonar-sonargraph-plugin-3.5.jar
  wget --no-clobber http://central.maven.org/maven2/org/codehaus/sonar-plugins/toxicity-chart/sonar-toxicity-chart-plugin/1.1/sonar-toxicity-chart-plugin-1.1.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-widget-lab/releases/download/1.8.1/sonar-widget-lab-plugin-1.8.1.jar
  wget --no-clobber https://github.com/stefanrinderle/softvis3d/releases/download/softvis3d-0.5.2/sonar-softvis3d-plugin-0.5.2.jar


  # infra
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-googleanalytics-plugin/1.1/sonar-googleanalytics-plugin-1.1.jar
  wget --no-clobber https://github.com/astrebel/sonar-slack-notifier-plugin/releases/download/v0.1/sonar-slack-notifier-plugin-0.1.jar


  # source control
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar


  # code review PR plugins
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.3.jar
  wget --no-clobber https://github.com/AmadeusITGroup/sonar-stash/releases/download/1.1.0/sonar-stash-plugin-1.1.0.jar


  # uncategorised
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-checkstyle-plugin/sonar-checkstyle-plugin-2.4.jar
  wget --no-clobber https://github.com/stevespringett/dependency-check-sonar-plugin/releases/download/sonar-dependency-check-1.0.3/sonar-dependency-check-plugin-1.0.3.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-findbugs/releases/download/3.4.3/sonar-findbugs-plugin-3.4.3.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-generic-coverage/sonar-generic-coverage-plugin-1.2.jar
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-pitest-plugin/0.6/sonar-pitest-plugin-0.6.jar
  wget --no-clobber https://github.com/QualInsight/qualinsight-plugins-sonarqube-smell/releases/download/qualinsight-plugins-sonarqube-smell-3.0.0/qualinsight-plugins-sonarqube-smell-plugin-3.0.0.jar
  wget --no-clobber http://www.rigs-it.net/opendownloads/XanitizerSonarQubePlugin-1.1.1.zip
  rm XanitizerSonarQubePlugin*pdf
  unzip -u XanitizerSonarQubePlugin-1.1.1.zip
  rm XanitizerSonarQubePlugin-1.1.1.zip

  # TODO(pete): BROKEN
  # wget --no-clobber https://github.com/QualInsight/qualinsight-plugins-sonarqube-badges/releases/download/qualinsight-plugins-sonarqube-badges-2.0.1/qualinsight-sonarqube-badges-2.0.1.jar
  # wget --no-clobber http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-timeline-plugin/1.5/sonar-timeline-plugin-1.5.jar

popd

echo "The containers should build but not run because secrets are not in place."

docker-compose build
exit 0