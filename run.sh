#!/bin/sh
git pull
bundle update --source tutheme
wget -O ./_data/news.csv $(bundle exec yaml get news-feed -F=_config.yml)
wget -O ./_data/events.csv $(bundle exec yaml get events-feed -F=_config.yml)
wget -O ./_data/profiles.csv $(bundle exec yaml get faculty-feed -F=_config.yml)
bundle exec jekyll serve --watch --drafts