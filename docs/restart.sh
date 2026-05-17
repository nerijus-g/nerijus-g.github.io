#!/usr/bin/bash
pkill -f "jekyll serve"
bundle install && bundle exec jekyll serve --host 0.0.0.0 --watch
