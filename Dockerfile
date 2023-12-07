FROM alpine:3.18

# renovate: datasource=pypi depName=ansible-doctor
ENV ANSIBLE_DOCTOR_VERSION=3.1.3

RUN apk add --no-cache bash python3 python3-dev py3-pip build-base && \
    pip3 install -U ansible-doctor==${ANSIBLE_DOCTOR_VERSION} && \
    apk del build-base && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
