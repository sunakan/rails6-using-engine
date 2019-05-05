#!/bin/bash

#bundle update blog_engine
bundle check || bundle install

bundle exec rake db:create
bundle exec rake db:migrate
bin/webpack

bundle exec puma -C config/puma.rb
