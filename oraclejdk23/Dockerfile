FROM debian:bookworm-slim

ARG TARGETARCH

# install os packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install ca-certificates curl -yy

### setup java 23
RUN set -e; \
    echo "TARGETARCH=$TARGETARCH"; \
    if [ "$TARGETARCH" = "amd64" ]; then \
        curl -o /tmp/java.tar.gz https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.tar.gz || exit 1; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        curl -o /tmp/java.tar.gz https://download.oracle.com/java/23/latest/jdk-23_linux-aarch64_bin.tar.gz || exit 1; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi

RUN mkdir -p /usr/lib/jvm/oraclejdk23/ && \
    tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oraclejdk23/ --strip-components=1 && \
    ln -sf /usr/lib/jvm/oraclejdk23/ /docker-java-home && \
    rm -f /tmp/java.tar.gz

ENV JAVA_HOME=/docker-java-home
ENV JAVA_VERSION=23
ENV PATH=$JAVA_HOME/bin:$PATH

# -XX:UseSVE=0 is a workaround to run on ARM64
CMD ["java", "-XX:UseSVE=0", "-version"]
