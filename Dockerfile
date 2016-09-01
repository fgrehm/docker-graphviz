FROM alpine:3.4
MAINTAINER Fabio Rehm "fgrehm@gmail.com"
RUN apk add --update --no-cache \
           graphviz \
           ttf-freefont
