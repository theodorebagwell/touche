FROM ruby:2.4.1-alpine
MAINTAINER Theodore Bagwell <theodore@bagwell.com>

RUN apk update && apk add --update --no-cache nodejs build-base git bash postgresql-dev tzdata imagemagick imagemagick-dev ghostscript ghostscript-fonts

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true

RUN mkdir -p /home/app
WORKDIR /home/app

ADD Gemfile* /home/app/
RUN bundle install --without development test --jobs 20
ADD . /home/app

RUN bundle exec rails assets:precompile DATABASE_URL=postgresql://localhost/null SECRET_KEY_BASE=dummykey
CMD bundle exec puma -C /home/app/config/puma.rb
