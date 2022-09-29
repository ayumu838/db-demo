FROM ruby:3.1.2

RUN apt-get update -qq \
&& apt-get install -y mariadb-server npm \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /db-demo
COPY Gemfile /db-demo/Gemfile
# COPY Gemfile.lock /db-demo/Gemfile.lock
RUN bundle install
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
