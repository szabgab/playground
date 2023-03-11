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
RUN apt-get install -y cpanminus                              && \
    cpanm --notest Dist::Zilla                                && \
    cpanm --notest Dist::Zilla::Plugin::Config::Git           && \
    cpanm --notest Dist::Zilla::Plugin::ConfirmRelease        && \
    cpanm --notest Dist::Zilla::Plugin::CPANFile              && \
    cpanm --notest Dist::Zilla::Plugin::ExtraTests            && \
    cpanm --notest Dist::Zilla::Plugin::GatherDir             && \
    cpanm --notest Dist::Zilla::Plugin::GitHub::Meta          && \
    cpanm --notest Dist::Zilla::Plugin::Git::Tag              && \
    cpanm --notest Dist::Zilla::Plugin::License               && \
    cpanm --notest Dist::Zilla::Plugin::MakeMaker             && \
    cpanm --notest Dist::Zilla::Plugin::Manifest              && \
    cpanm --notest Dist::Zilla::Plugin::MetaJSON              && \
    cpanm --notest Dist::Zilla::Plugin::MetaProvides::Package && \
    cpanm --notest Dist::Zilla::Plugin::MetaYAML              && \
    cpanm --notest Dist::Zilla::Plugin::PkgVersion            && \
    cpanm --notest Dist::Zilla::Plugin::Pod2Readme            && \
    cpanm --notest Dist::Zilla::Plugin::PodSyntaxTests        && \
    cpanm --notest Dist::Zilla::Plugin::Prereqs               && \
    cpanm --notest Dist::Zilla::Plugin::PruneCruft            && \
    cpanm --notest Dist::Zilla::Plugin::TestRelease           && \
    cpanm --notest Dist::Zilla::Plugin::UploadToCPAN          && \
    cpanm --notest Devel::Cover                               && \
    echo DONE Perl installations

# Python
RUN pip install pytest

# Ruby bundler needed this
RUN git config --global --add safe.directory /opt
