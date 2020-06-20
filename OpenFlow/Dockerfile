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
RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/distribution-karaf/0.6.4-Carbon/distribution-karaf-0.6.4-Carbon.zip
RUN apt-get install unzip
RUN unzip distribution-karaf-0.6.4-Carbon.zip
WORKDIR /distribution-karaf-0.6.4-Carbon
CMD ["./bin/karaf","feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core odl-dluxapps-nodes odl-dluxapps-topology odl-dluxapps-yangui odl-dluxapps-yangvisualizer odl-dluxapps-yangman"]
#CMD ["./bin/karaf","feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-all"]
#CMD ["/bin/bash"]
