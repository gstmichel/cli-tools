FROM alpine@sha256:e2e16842c9b54d985bf1ef9242a313f36b856181f188de21313820e177002501
ARG GIT_VERSION=2.38.4-r0 \
    OPENSSH_CLIENT_VERSION=9.1_p1-r2 \
    PYTHON_VERSION=3.10.10-r0 \
    PY3_PIP_VERSION=22.3.1-r1 \
    PIP_WHEEL_VERSION=0.38.4 \
    PIP_ANSIBLE_VERSION=2.14.2

RUN apk update --no-cache && apk add \
    git=${GIT_VERSION} \
    openssh-client=${OPENSSH_CLIENT_VERSION} \
    python3=${PYTHON_VERSION} \
    py3-pip=${PY3_PIP_VERSION} \
    && adduser -D ansible \
    && mkdir /workspace \
    && chown -R ansible /workspace

USER ansible

RUN pip install --user wheel==${PIP_WHEEL_VERSION} &&\
    pip install ansible-core==${PIP_ANSIBLE_VERSION}

ENV PATH="/home/ansible/.local/bin:${PATH}"

VOLUME [ "/workspace" ]

WORKDIR /workspace
