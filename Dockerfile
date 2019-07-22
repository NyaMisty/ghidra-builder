FROM ubuntu

RUN apt-get update; apt-get install -y build-essential git bison flex && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y openjdk-11-jdk openjdk-11-jre && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y unzip curl && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y zip && rm -rf /var/lib/apt/*
RUN apt-get update; apt-get install -y gradle && rm -rf /var/lib/apt/*
