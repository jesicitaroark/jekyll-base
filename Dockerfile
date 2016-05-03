FROM troyswanson/jekyll

EXPOSE 5000

ARG CACHEBUST=6
ADD . /tmp

RUN jekyll build --trace -s /tmp -d /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf