FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client vim
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
