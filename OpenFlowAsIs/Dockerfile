FROM ubuntu:16.04



RUN apt-get update

# install tools - docker ubuntu
RUN apt install -y bash-completion software-properties-common python-software-properties sudo curl ssh git

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
RUN apt-get install unzip

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install nodejs
RUN npm install -g grunt
RUN git clone https://github.com/CiscoDevNet/OpenDaylight-Openflow-App.git
RUN wget https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.3.0-Lithium/distribution-karaf-0.3.0-Lithium.tar.gz
RUN tar -zxvf distribution-karaf-0.3.0-Lithium.tar.gz
#WORKDIR distribution-karaf-0.3.0-Lithium/

CMD ["./bin/bash"]

