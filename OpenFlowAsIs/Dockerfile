FROM ubuntu:16.04



RUN apt-get update
# Install OpenJDK-8
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;

# Fix certificate issues
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
RUN apt-get install wget
RUN wget https://www.youtube.com/redirect?event=video_description&v=so3TW7Xrq6Y&redir_token=hDlTHxFRuNL1wvWluqNDsdBFRox8MTU5Mjc2MTc1NkAxNTkyNjc1MzU2&q=https%3A%2F%2Fnexus.opendaylight.org%2Fcontent%2Frepositories%2Fopendaylight.release%2Forg%2Fopendaylight%2Fintegration%2Fdistribution-karaf%2F0.5.2-Boron-SR2%2Fdistribution-karaf-0.5.2-Boron-SR2.zip
RUN unzip distribution-karaf-0.5.2-Boron-SR2.zip
WORKDIR distribution-karaf-0.5.2-Boron-SR2/

CMD ["./bin/karaf"]

