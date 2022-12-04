FROM ubuntu:22.10
RUN apt-get update     && \
    apt-get dist-upgrade -y   && \
    apt-get install -y python3  && \
    apt-get install -y python3-pip && \
    apt-get install -y vim && \
    apt-get install -y less && \
    apt-get install -y jq && \
    echo DONE

RUN apt-get install -y ruby
RUN apt-get install -y ruby-bundler
RUN apt-get install -y git


# Ruby bundler needed this? or just one of the Ruby packages?
# RUN git config --global --add safe.directory /opt
