#!/bin/sh

git remote rm heroku

heroku create --buildpack "https://github.com/HashNuke/heroku-buildpack-elixir.git"

APP_NAME=$(heroku apps | grep -v '===' | head -n 1)

heroku buildpacks:set https://github.com/HashNuke/heroku-buildpack-elixir.git --app $APP_NAME

git push heroku master

heroku open
