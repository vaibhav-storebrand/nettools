FROM alpine:latest

LABEL maintainer="Vaibhav Walke <vaibhav.walke181@gmail.com>"

# Install essential troubleshooting tools
RUN apk add --no-cache \
    bash \
    curl \
    wget \
    iputils \
    net-tools \
    bind-tools \
    tcpdump \
    iproute2 \
    nmap \
    socat \
    tcptraceroute \
    htop \
    procps \
    lsof \
    strace \
    file \
    jq \
    httpie \
    kubectl



# Keep container running for debugging
CMD ["sleep", "3600"]

