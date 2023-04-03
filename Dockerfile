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
    cpanm --notest Dist::Zilla::Plugin::CheckChangeLog        && \
    cpanm --notest Dist::Zilla::Plugin::ContributorsFile      && \
    cpanm --notest Dist::Zilla::Plugin::Git::Contributors     && \
    cpanm --notest Dist::Zilla::Plugin::GitHubREADME::Badge   && \
    cpanm --notest Dist::Zilla::Plugin::PodWeaver             && \
    cpanm --notest Dist::Zilla::Plugin::ReadmeAddDevInfo      && \
    cpanm --notest Dist::Zilla::Plugin::ReadmeAnyFromPod      && \
    cpanm --notest Dist::Zilla::Plugin::SyncCPANfile          && \
    cpanm --notest Devel::Cover                               && \
    echo DONE Perl installations

# PHP
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get install -y php-cli composer php-curl

# Python
RUN pip install pytest pytest-random-order pytest-coverage pytest-xdist


# Ruby bundler needed this
RUN git config --global --add safe.directory /opt


RUN apt-get -y install php-pear phpunit


RUN cpanm --notest Module::Install  && \
    cpanm --notest ExtUtils::MakeMaker::CPANfile  && \
    cpanm --notest Data::GUID  && \
    cpanm --notest Devel::StrictMode  && \
    cpanm --notest MooX::Enumeration  && \
    cpanm --notest MooX::ProtectedAttributes  && \
    cpanm --notest MooX::Should  && \
    cpanm --notest OpenTracing::Interface  && \
    cpanm --notest OpenTracing::Types  && \
    cpanm --notest Role::Declare::Should  && \
    cpanm --notest Sub::Trigger::Lock  && \
    cpanm --notest Test::Interface  && \
    cpanm --notest Test::MockObject::Extends  && \
    cpanm --notest Test::OpenTracing::Interface  && \
    cpanm --notest Test::Time::HiRes && \
    echo DONE


RUN cpanm --notest HTTP::Response::Maker  && \
    cpanm --notest Hash::Merge  && \
    cpanm --notest MooX::Attribute::ENV  && \
    cpanm --notest Test::JSON  && \
    cpanm --notest Test::MockModule  && \
    cpanm --notest Test::URI  && \
    cpanm --notest Types::URI  && \
    echo DONE



