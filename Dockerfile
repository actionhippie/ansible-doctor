FROM alpine:3.24@sha256:e7c4abb69531cb09e2a2bbb56fad3367ab694865c49df898c1c683185cc4376c

# renovate: datasource=pypi depName=ansible-doctor
ENV ANSIBLE_DOCTOR_VERSION=8.4.2

RUN apk add --no-cache git bash python3 python3-dev py3-pip ansible-core && \
    pip3 install --break-system-packages -U ansible-doctor==${ANSIBLE_DOCTOR_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
