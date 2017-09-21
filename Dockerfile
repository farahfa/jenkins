FROM jenkins/jenkins:2.73.1
MAINTAINER Fadi Farah <fadi.farah@covisint.com>

ENV JENKINS_HOME /var/jenkins_home
COPY no_init_setup.groovy ${JENKINS_HOME}/init.groovy.d/no_init_setup.groovy

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
