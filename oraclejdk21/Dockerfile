FROM debian:bookworm-slim

ARG TARGETARCH

# install os packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install ca-certificates curl -yy

### setup java 21
RUN set -e; \
    echo "TARGETARCH=$TARGETARCH"; \
    if [ "$TARGETARCH" = "amd64" ]; then \
        curl -o /tmp/java.tar.gz https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz || exit 1; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        curl -o /tmp/java.tar.gz https://download.oracle.com/java/21/latest/jdk-21_linux-aarch64_bin.tar.gz || exit 1; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi
RUN mkdir -p /usr/lib/jvm/oraclejdk21/ && \
    tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oraclejdk21/ --strip-components=1 && \
    ln -sf /usr/lib/jvm/oraclejdk21/ /docker-java-home && \
    rm -f /tmp/java.tar.gz

ENV JAVA_HOME=/docker-java-home
ENV JAVA_VERSION=21
ENV PATH=$JAVA_HOME/bin:$PATH

CMD ["java", "-version"]
