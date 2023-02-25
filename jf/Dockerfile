ARG JF_VERSION=2.34.3
FROM releases-docker.jfrog.io/jfrog/jfrog-cli-v2-jf:$JF_VERSION

ENV CI=false

RUN mkdir /workspace

VOLUME [ "/workspace" ]

WORKDIR /workspace