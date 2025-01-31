# java4docker

This repository contains Dockerfiles that can be used to create Docker images for Java applications.



The images are based on the official [OpenJDK](https:/jdk.java.net) 
and [Oracle Java](https://www.oracle.com/de/java/technologies/downloads) archives. 


Currently, the following versions are supported:

- OpenJDK 21 Debian Bookworm (amd64, arm64)
- OpenJDK 21 Alpine (amd64, arm64)
- OpenJDK 23 Debian Bookworm (amd64, arm64)
- OpenJDK 23 Alpine (amd64, arm64)
- Oracle JDK 21 Debian Bookworm (amd64, arm64)
- Oracle JDK 23 Debian Bookworm (amd64, arm64)



## Links

- [Docker Hub](https://hub.docker.com/r/fmlabs/java4docker)
- [OpenJDK](https://jdk.java.net/)
- [OpenJDK Archive](https://jdk.java.net/archive/)
- [Oracle Java](https://www.oracle.com/de/java/technologies/downloads)



## Dockerfile Snippets


```
## setup java 10
##COPY ./server/tmp/oracle-jre-10.0.2_linux-x64_bin.tar.gz /tmp/java.tar.gz
#RUN curl -o /tmp/java.tar.gz http://192.168.0.55/files/java/oracle-jre-10.0.2_linux-x64_bin.tar.gz
#RUN mkdir -p /usr/lib/jvm/oracle-jre-10.0.2/
#RUN tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oracle-jre-10.0.2/ --strip-components=1
#RUN ln -sf /usr/lib/jvm/oracle-jre-10.0.2/ /docker-java-home
#RUN rm -f /tmp/java.tar.gz
#ENV JAVA_HOME=/docker-java-home
#ENV JAVA_VERSION=10.0.2
#ENV PATH=$JAVA_HOME/bin:$PATH

# setup java 11 (11.0.17)
#COPY ./server/tmp/oracle-jdk-11.0.17_linux-x64_bin.tar.gz /tmp/java.tar.gz
#RUN curl -o /tmp/java.tar.gz http://192.168.0.55/files/java/oracle-jdk-11.0.17_linux-x64_bin.tar.gz
#RUN mkdir -p /usr/lib/jvm/oracle-jdk-11.0.17/
#RUN tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oracle-jdk-11.0.17/ --strip-components=1
#RUN ln -sf /usr/lib/jvm/oracle-jdk-11.0.17/ /docker-java-home
#RUN rm -f /tmp/java.tar.gz
#ENV JAVA_HOME=/docker-java-home
#ENV JAVA_VERSION=11.0.17
#ENV PATH=$JAVA_HOME/bin:$PATH

## setup java 17 (17.0.5)
##COPY ./server/tmp/oracle-jdk-17.0.5_linux-x64_bin.tar.gz /tmp/java.tar.gz
#RUN curl -o /tmp/java.tar.gz http://192.168.0.55/files/java/oracle-jdk-17.0.5_linux-x64_bin.tar.gz
#RUN curl -o /tmp/java.tar.gz https://download.oracle.com/java/17/archive/jdk-17.0.7_linux-x64_bin.tar.gz
#RUN mkdir -p /usr/lib/jvm/oracle-jdk-17.0.7/
#RUN tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oracle-jdk-17.0.7/ --strip-components=1
#RUN ln -sf /usr/lib/jvm/oracle-jdk-17.0.7/ /docker-java-home
#RUN rm -f /tmp/java.tar.gz
#ENV JAVA_HOME=/docker-java-home
#ENV JAVA_VERSION=17.0.7
#ENV PATH=$JAVA_HOME/bin:$PATH

## setup java 19 (19.0.1)
##COPY ./server/tmp/oracle-jdk-19.0.1_linux-x64_bin.tar.gz /tmp/java.tar.gz
#RUN curl -o /tmp/java.tar.gz http://192.168.0.55/files/java/oracle-jdk-19.0.1_linux-x64_bin.tar.gz
#RUN mkdir -p /usr/lib/jvm/oracle-jdk-19.0.1/
#RUN tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oracle-jdk-19.0.1/ --strip-components=1
#RUN ln -sf /usr/lib/jvm/oracle-jdk-19.0.1/ /docker-java-home
#RUN rm -f /tmp/java.tar.gz
#ENV JAVA_HOME=/docker-java-home
#ENV JAVA_VERSION=19.0.1
#ENV PATH=$JAVA_HOME/bin:$PATH


## setup java 21
#RUN curl -o /tmp/java.tar.gz https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
#RUN mkdir -p /usr/lib/jvm/oracle-jdk-21/
#RUN tar -xzvf /tmp/java.tar.gz -C /usr/lib/jvm/oracle-jdk-21/ --strip-components=1
#RUN ln -sf /usr/lib/jvm/oracle-jdk-21/ /docker-java-home
#RUN rm -f /tmp/java.tar.gz
#ENV JAVA_HOME=/docker-java-home
#ENV JAVA_VERSION=21.0.4
#ENV PATH=$JAVA_HOME/bin:$PATH

```