FROM alpine:3.24@sha256:660e0827bd401543d81323d4886abbd08fda0fe3ba84337837d0b11a67251283

# renovate: datasource=pypi depName=ansible-doctor
ENV ANSIBLE_DOCTOR_VERSION=8.3.1

RUN apk add --no-cache git bash python3 python3-dev py3-pip ansible-core && \
    pip3 install --break-system-packages -U ansible-doctor==${ANSIBLE_DOCTOR_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
