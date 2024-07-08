#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake generate camaleon_cms:install
bundle exec rake camaleon_cms:generate_migrations
bundle exec rake db:migrate
