FROM ubuntu:22.10
RUN apt-get update                  && \
    apt-get dist-upgrade -y         && \
    apt-get install -y vim          && \
    apt-get install -y less         && \
    apt-get install -y jq           && \
    apt-get install -y git          && \
    apt-get install -y ack          && \
    apt-get install -y python3      && \
    apt-get install -y python3-pip  && \
    apt-get install -y ruby         && \
    apt-get install -y ruby-dev     && \
    apt-get install -y ruby-bundler && \
    echo DONE


# Ruby bundler needed this
RUN git config --global --add safe.directory /opt
