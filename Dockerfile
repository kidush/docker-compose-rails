FROM ruby:2.2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev 
RUN mkdir /rails_docker
WORKDIR /rails_docker
ADD Gemfile /rails_docker/Gemfile
ADD Gemfile.lock /rails_docker/Gemfile.lock
RUN bundle install
ADD . /rails_docker
