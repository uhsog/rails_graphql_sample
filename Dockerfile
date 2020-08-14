# GET Ruby LTS image
FROM ruby:2.7.1

RUN apt-get update -qq && \
    # ソースリストにNodeJSを追加してインストール
    curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
    # ソースリストにYarnを追加してインストール
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list &&\
    apt-get update -qq &&\
    apt-get install -y postgresql-client nodejs yarn

RUN mkdir /rails_graphql_sample
ENV APP_ROOT /rails_graphql_sample
WORKDIR $APP_ROOT

COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
COPY . $APP_ROOT
