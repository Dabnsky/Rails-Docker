FROM ruby:3.0.0
RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

ADD . /Rails-Docker
RUN MKDIR /Rails_Demo
WORKDIR /Rails-Docker
RUN rails generate rspec:install
RUN bundle install haml
RUN gem install html2haml

EXPOSE 3000


CMD [bash]
