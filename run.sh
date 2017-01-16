#!/bin/sh
git pull
bundle update --source tutheme
bundle exec jekyll serve --watch --drafts