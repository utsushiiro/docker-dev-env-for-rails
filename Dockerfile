FROM ruby:2.5.0

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential nodejs

WORKDIR /app

CMD ["/bin/bash"]