FROM ubuntu:18.04

COPY . /usr/local/bin/
#RUN chmod 777 /usr/local/bin/docker-entrypoint.sh
#RUN ln -sf usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

#ENTRYPOINT ["docker-entrypoint.sh"]

RUN apt update
RUN apt -y install git
RUN apt -y install python3.7
RUN apt -y install iputils-ping
RUN apt -y install nano
RUN apt -y install net-tools
RUN apt -y install python3-pip
RUN apt -y install libpq-dev
WORKDIR "/usr/local/bin/httpserv/"
RUN pip3 install -r requirements.txt
CMD [ "python3", "./httpf.py" ]
