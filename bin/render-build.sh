#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# bundle exec rails generate camaleon_cms:install
# bundle exec rails camaleon_cms:generate_migrations
bundle exec rails db:migrate
