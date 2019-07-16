FROM ubuntu:18.04

ARG FPM_VERSION

RUN test -n "$FPM_VERSION"

RUN apt-get update && apt-get install -y  ruby ruby-dev rubygems build-essential rpm
RUN gem install rake
RUN gem install --no-ri --no-rdoc -v $FPM_VERSION fpm

RUN mkdir /pkg

WORKDIR /pkg

ENTRYPOINT ["fpm"]
