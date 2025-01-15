FROM alpine:latest
RUN apk update && apk add --no-cache \
    vim \
    bash \
    bind-tools \
    curl && \
    rm -rf /var/cache/apk/*

SHELL ["bin/bash", "-c"]

CMD ["bash"]

