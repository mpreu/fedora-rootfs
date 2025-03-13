ARG FEDORA_VERSION=41
FROM docker.io/library/fedora:${FEDORA_VERSION}

RUN dnf update -y \
    && dnf install -y @core nano vim git wget \
    && dnf clean all \
  	&& rm -rf /var/cache/dnf
