FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y
RUN mkdir /bulls-and-cows
WORKDIR /bulls-and-cows
ADD Gemfile /bulls-and-cows/Gemfile
ADD Gemfile.lock /bulls-and-cows/Gemfile.lock
RUN bundle install
ADD . /bulls-and-cows