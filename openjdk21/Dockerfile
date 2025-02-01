FROM debian:bookworm-slim

ARG TARGETARCH

# install os packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install ca-certificates curl -yy


### setup java 21.0.2 (build 21.0.2+13)
RUN set -e; \
    if [ "$TARGETARCH" = "amd64" ]; then \
        curl -o /tmp/java.tar.gz https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz || exit 1; \
    elif [ "$TARGETARCH" = "arm64" ]; then \
        curl -o /tmp/java.tar.gz https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-aarch64_bin.tar.gz || exit 1; \
    else \
        echo "Unsupported architecture: $TARGETARCH" && exit 1; \
    fi
RUN mkdir -p /usr/lib/jvm/openjdk21/ && \
    tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/openjdk21/ --strip-components=1 && \
    ln -sf /usr/lib/jvm/openjdk21/ /docker-java-home && \
    rm -f /tmp/java.tar.gz

ENV JAVA_HOME=/docker-java-home
ENV JAVA_VERSION=21
ENV PATH=$JAVA_HOME/bin:$PATH

CMD ["java", "-version"]
