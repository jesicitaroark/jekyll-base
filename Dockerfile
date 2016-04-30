FROM nginx
MAINTAINER gerphimum@gmail.com

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    build-essential \
    nginx \
    python \
    ruby \
    ruby-dev \dasdasdas
    
RUN bundle install
RUN jekyll build


COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf