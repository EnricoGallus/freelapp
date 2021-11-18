#!/bin/bash

cd /app
RAILS_ENV=production bin/rails db:create
RAILS_ENV=production bin/rails db:migrate
RAILS_ENV=production bin/rails db:reset
RAILS_ENV=production bin/rails assets:precompile
bundle exec foreman start