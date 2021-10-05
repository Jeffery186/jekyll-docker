FROM ruby:slim-buster

LABEL maintainer="made by ibook86"

RUN  apt-get update && apt-get install -y --no-install-recommends wget && gem install bundler && \
     wget https://raw.githubusercontent.com/ibook86/jekyll-docker/main/Gemfile && \
     wget https://raw.githubusercontent.com/ibook86/jekyll-docker/main/Gemfile.lock && bundle install