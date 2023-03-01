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
    apt-get install -y libssl-dev   && \
    apt-get install -y zlib1g-dev   && \
    echo DONE

# Perl
RUN apt-get install -y cpanminus  && \
    cpanm --notest Dist::Zilla

# Python
RUN pip install pytest

# Ruby bundler needed this
RUN git config --global --add safe.directory /opt
