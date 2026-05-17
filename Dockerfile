FROM ruby:3.1

RUN apt-get update && apt-get install -y build-essential nodejs npm

WORKDIR /srv/jekyll

RUN gem install bundler jekyll

COPY docker/restart.sh / 

EXPOSE 4000