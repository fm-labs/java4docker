FROM debian:bookworm-slim

ARG TARGETARCH

# install os packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install ca-certificates curl -yy

### setup java 23.0.2
RUN set -e; \
    echo "TARGETARCH=$TARGETARCH"; \
    if [ "$TARGETARCH" = "amd64" ]; then \
        curl -o /tmp/java.tar.gz https://download.java.net/java/GA/jdk23.0.2/6da2a6609d6e406f85c491fcb119101b/7/GPL/openjdk-23.0.2_linux-x64_bin.tar.gz || exit 1; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        curl -o /tmp/java.tar.gz https://download.java.net/java/GA/jdk23.0.2/6da2a6609d6e406f85c491fcb119101b/7/GPL/openjdk-23.0.2_linux-aarch64_bin.tar.gz || exit 1; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi

RUN mkdir -p /usr/lib/jvm/openjdk23/ && \
    tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/openjdk23/ --strip-components=1 && \
    ln -sf /usr/lib/jvm/openjdk23/ /docker-java-home && \
    rm -f /tmp/java.tar.gz

ENV JAVA_HOME=/docker-java-home
ENV JAVA_VERSION=23
ENV PATH=$JAVA_HOME/bin:$PATH

# -XX:UseSVE=0 is a workaround to run on ARM64
CMD ["java", "-XX:UseSVE=0", "-version"]
