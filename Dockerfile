##########################################################################
#### BUILD CONTAINER
##########################################################################
FROM ruby:2.5-alpine AS builder

# Install dependencies to build gems
RUN apk --no-cache add \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
  nodejs \
  tzdata \
  git

ENV NODE_ENV=production
ENV RAILS_ENV=production

RUN mkdir /app
WORKDIR /app

# Install gems
RUN gem install bundler && bundle config --global frozen 1
COPY .ruby-version Gemfile Gemfile.lock /app/
RUN bundle install --without development test --retry 3 --jobs `expr $(cat /proc/cpuinfo | grep -c "cpu cores") - 1`
RUN rm -rf /usr/local/bundle/cache/*.gem
RUN rm -rf /usr/local/bundle/gems/marcel-*/test
RUN find /usr/local/bundle/gems -name *.[och] -delete

# Install node modules
COPY package.json yarn.lock /app/
RUN npm install -g yarn && yarn install --production

# Compile assets
COPY . /app
RUN bundle exec rake assets:precompile


##########################################################################
#### RUNTIME CONTAINER
##########################################################################
FROM ruby:2.5-alpine

# Install dependencies to build gems
RUN apk --no-cache add \
  ca-certificates \
  libpq \
  tzdata

RUN mkdir /app
WORKDIR /app

# Copy source
COPY . /app
COPY --from=builder /app/public /app/public
COPY --from=builder /usr/local/bundle /usr/local/bundle

ENV NODE_ENV=production
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
ENV RAILS_LOG_TO_STDOUT=true
ENV PORT=3000

EXPOSE 3000

CMD ["./bin/rails", "server", "--early-hints"]
