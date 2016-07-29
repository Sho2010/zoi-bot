FROM ruby:onbuild
MAINTAINER Sho2010

ENV SLACK_TOKEN=""

CMD ["slappy", "start"]
