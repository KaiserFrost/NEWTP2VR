FROM ubuntu:18.04

RUN apt update
RUN apt -y install python3.7
RUN get install nano
RUN apt -y install vsftpd
RUN apt -y install ftp
RUN apt-get update && apt-get install -y gnupg2
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

# Add PostgreSQL's repository. It contains the most recent stable release
#     of PostgreSQL, ``9.3``.
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Install ``python-software-properties``, ``software-properties-common`` and PostgreSQL 9.3
#  There are some warnings (in red) that show up during the build. You can hide
#  them by prefixing each apt-get statement with DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python-software-properties software-properties-common postgresql-12 postgresql-client-12 postgresql-contrib-12

