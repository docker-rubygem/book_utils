FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0

RUN gem install book_utils --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dir2html"]
CMD ["--help"]
