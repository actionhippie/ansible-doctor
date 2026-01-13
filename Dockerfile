FROM alpine:3.23@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62

# renovate: datasource=pypi depName=ansible-doctor
ENV ANSIBLE_DOCTOR_VERSION=8.2.0

RUN apk add --no-cache git bash python3 python3-dev py3-pip ansible-core && \
    pip3 install --break-system-packages -U ansible-doctor==${ANSIBLE_DOCTOR_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
