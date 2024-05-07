FROM ruby:3.3.1-alpine

LABEL org.opencontainers.image.authors="dev@kjuly.com" \
      org.opencontainers.image.licenses=MIT \
      org.opencontainers.image.source=https://github.com/Kjuly/docker-ruby-alpine-build-base \
      org.opencontainers.image.description="Alpine-based Ruby Docker image with build-base installed."

RUN apk add --no-cache build-base
