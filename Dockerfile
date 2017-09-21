FROM jenkins/jenkins:2.73.1
MAINTAINER Fadi Farah <fadi.farah@covisint.com>

ARG user=jenkins
ARG http_port=8080
ARG agent_port=50000
ENV JENKINS_HOME /var/jenkins_home

COPY no_init_setup.groovy ${JENKINS_HOME}/init.groovy.d/no_init_setup.groovy
EXPOSE ${http_port}
EXPOSE ${agent_port}

USER ${user}

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
