#!/bin/bash

cd /app
RAILS_ENV=production bin/rails db:create
RAILS_ENV=production bin/rails db:migrate
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 RAILS_ENV=production bin/rails db:reset
RAILS_ENV=production bin/rails assets:precompile
bundle exec foreman start