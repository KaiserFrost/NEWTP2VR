FROM ubuntu:16.04



RUN apt-get update
RUN apt-get install default-jre-headless
RUN export JAVA_HOME=/usr/lib/jvm/default-java
RUN apt-get install wget
RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/distribution-karaf/0.6.4-Carbon/distribution-karaf-0.6.4-RUN Carbon.zip
RUN apt-get install unzip
RUN unzip distribution-karaf-0.6.4-Carbon.zip
RUN cd distribution-karaf-0.6.4-Carbon
RUN ./bin/karaf
RUN feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-all
CMD ["/bin/bash"]
