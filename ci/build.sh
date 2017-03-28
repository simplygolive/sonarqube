#!/usr/bin/env bash

pushd plugins

  wget --no-clobber https://github.com/jmecsoftware/sonar-fsharp-plugin/releases/download/1.0.0/sonarqube-fsharp-plugin-1.0.0.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-erlang/releases/download/1.2/sonar-erlang-plugin.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-5.8.0.660.jar
  wget --no-clobber https://github.com/racodond/sonar-css-plugin/releases/download/2.4/sonar-css-plugin-2.4.jar
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/android/sonar-android-plugin/1.1/sonar-android-plugin-1.1.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-groovy-plugin/sonar-groovy-plugin-1.4.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-4.7.0.9212.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.21.0.4409.jar
  wget --no-clobber https://github.com/racodond/sonar-json-plugin/releases/download/2.1/sonar-json-plugin-2.1.jar
  wget --no-clobber https://github.com/iwarapter/sonar-puppet/releases/download/1.4/sonar-puppet-plugin-1.4.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-python-plugin/sonar-python-plugin-1.7.0.1195.jar
  wget --no-clobber https://github.com/Sagacify/sonar-scala/releases/download/v0.0.3/sonar-scala-plugin-0.0.3.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-web-plugin/sonar-web-plugin-2.5.0.476.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-xml-plugin/sonar-xml-plugin-1.4.2.885.jar


  # viz / widgets
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-motion-chart-plugin/1.7/sonar-motion-chart-plugin-1.7.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-sonargraph/releases/download/sonar-sonargraph-plugin-3.5/sonar-sonargraph-plugin-3.5.jar
  wget --no-clobber http://central.maven.org/maven2/org/codehaus/sonar-plugins/toxicity-chart/sonar-toxicity-chart-plugin/1.1/sonar-toxicity-chart-plugin-1.1.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-widget-lab/releases/download/1.8.1/sonar-widget-lab-plugin-1.8.1.jar
  wget --no-clobber https://github.com/stefanrinderle/softvis3d/releases/download/softvis3d-0.7.0/sonar-softvis3d-plugin-0.7.0.jar


  # infra
  wget --no-clobber https://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-googleanalytics-plugin/1.1/sonar-googleanalytics-plugin-1.1.jar
  wget --no-clobber https://github.com/astrebel/sonar-slack-notifier-plugin/releases/download/v0.1/sonar-slack-notifier-plugin-0.1.jar
  wget --no-clobber https://github.com/steven-turner/sonar-auth-google/releases/download/0.5-RC1/sonar-auth-google-plugin-0.5-RC1.jar


  # source control
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar


  # code review PR plugins
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.0.699.jar
  wget --no-clobber https://github.com/AmadeusITGroup/sonar-stash/releases/download/1.2.0/sonar-stash-plugin-1.2.0.jar


  # uncategorised
  wget --no-clobber https://github.com/checkstyle/sonar-checkstyle/releases/download/3.6/checkstyle-sonar-plugin-3.6.jar
  wget --no-clobber https://github.com/stevespringett/dependency-check-sonar-plugin/releases/download/sonar-dependency-check-1.0.3/sonar-dependency-check-plugin-1.0.3.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-findbugs/releases/download/3.4.4/sonar-findbugs-plugin-3.4.4.jar
  wget --no-clobber https://sonarsource.bintray.com/Distribution/sonar-generic-coverage/sonar-generic-coverage-plugin-1.2.jar
  wget --no-clobber https://github.com/SonarQubeCommunity/sonar-pitest/releases/download/0.7/sonar-pitest-plugin-0.7.jar
  wget --no-clobber https://github.com/QualInsight/qualinsight-plugins-sonarqube-smell/releases/download/qualinsight-plugins-sonarqube-smell-4.0.0/qualinsight-sonarqube-smell-plugin-4.0.0.jar
  wget --no-clobber https://github.com/RIGS-IT/sonar-xanitizer/releases/download/1.3.3/sonar-xanitizer-plugin-1.3.3.jar
  wget --no-clobber https://github.com/willemsrb/sonar-rci-plugin/releases/download/sonar-rci-plugin-1.0.2/sonar-rci-plugin-1.0.2.jar

  # TODO(pete): BROKEN
  # wget --no-clobber http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-timeline-plugin/1.5/sonar-timeline-plugin-1.5.jar
  #   wget --no-clobber https://github.com/QualInsight/qualinsight-plugins-sonarqube-badges/releases/download/qualinsight-plugins-sonarqube-badges-2.0.1/qualinsight-sonarqube-badges-2.0.1.jar

popd

echo "The containers should build but not run because secrets are not in place."

docker-compose build
exit 0
