FROM alpine:3.7
MAINTAINER Fabio Rehm "fgrehm@gmail.com"
WORKDIR /graphviz
RUN apk add --update --no-cache \
           graphviz \
           ttf-freefont
