FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update; apt-get install -y build-essential git bison flex && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y openjdk-11-jdk openjdk-11-jre && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y unzip curl && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y zip && rm -rf /var/lib/apt/*
RUN cd /tmp && \
     curl -OL 'https://services.gradle.org/distributions/gradle-5.5.1-bin.zip' && \
     unzip -d /opt gradle*.zip && \
     rm gradle*.zip && \
     ln -s /opt/gradle*/bin/gradle /usr/local/bin/gradle 
