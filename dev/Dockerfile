FROM ubuntu:20.04@sha256:d5a6519d9f048100123c568eb83f7ef5bfcad69b01424f420f17c932b00dea76

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV PATH /opt/bin:$PATH

RUN apt-get update --fix-missing
RUN apt-get install -y sudo
# install docker dependencies
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
# install docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update && apt-get install -y \
    docker-ce docker-ce-cli containerd.io && \
    curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

RUN adduser --home /home/sdk --shell /bin/bash --gecos "" --disabled-password sdk
RUN echo 'sdk ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get install -y python3.8 python3-pip git

COPY bin /opt/bin
RUN chmod a+x /opt/bin/*

RUN python3.8 -m pip install flake8 bandit autopep8 pylint black rope

CMD /opt/bin/entrypoint
