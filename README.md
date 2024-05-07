# docker-ruby-alpine-build-base
Alpine-based Ruby Docker image with build-base installed.

## Usage

e.g., You can replace

```yaml
FROM ruby:3.3.1-alpine
...
RUN apk add --no-cache build-base && \
    bundle install --no-cache && \
    ...
    apk del --purge -r build-base
```

with

```yaml
FROM kjuly/ruby-alpine-build-base:latest
...
RUN bundle install --no-cache && \
    ...
    apk del --purge -r build-base
```

to save time on pkg `build-base` installation during your Docker image testing, especially when your local network is not good enough.
