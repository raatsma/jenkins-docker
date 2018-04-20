FROM jenkins
USER root

RUN sudo mkdir -p /tmp/download && \
 sudo curl -L https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz | tar -xz -C /tmp/download && \
 sudo rm -rf /tmp/download/docker/dockerd && \
 sudo mv /tmp/download/docker/docker* /usr/local/bin/ && \
 sudo rm -rf /tmp/download && \
 sudo groupadd -g 999 docker && \
 sudo usermod -aG staff,docker df-int-test

user df-int-test
