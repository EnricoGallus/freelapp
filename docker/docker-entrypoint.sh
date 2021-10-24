#!/bin/sh

rake db:create
rake db:migrate
rake db:seed
bundle exec rails s -b '0.0.0.0'
#puma -C config/docker_puma.rb -p 8080