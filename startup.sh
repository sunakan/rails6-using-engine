#!/bin/bash

#bundle update blog_engine
bundle check || bundle install

bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake assets:precompile
bin/webpack
bundle exec rake blog_engine:webpacker:compile

bundle exec puma -C config/puma.rb
