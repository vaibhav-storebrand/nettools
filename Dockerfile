FROM alpine:latest

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

# Set working directory
WORKDIR /root

# Keep container running for debugging
CMD ["sh", "-c", "while true; do sleep 3600; done"]
