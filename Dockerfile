FROM ubuntu:14.04

RUN apt-get install --yes software-properties-common

RUN \
  add-apt-repository --yes ppa:brightbox/ruby-ng && \
  add-apt-repository --yes ppa:chris-lea/node.js && \
  apt-get update

RUN apt-get install --yes git ruby2.1 ruby2.1-dev bundler libghc-zlib-dev nodejs

RUN git clone https://github.com/choffmeister/jekyll-apidocs /build

WORKDIR /build

RUN bundle

RUN LC_ALL=en_US.UTF-8 jekyll build
