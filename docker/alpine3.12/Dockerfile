FROM alpine:3.12

RUN echo "http://openresty.org/package/alpine/v3.12/main" >> /etc/apk/repositories \
	&& wget 'http://openresty.org/package/admin@openresty.com-5ea678a6.rsa.pub' -O /etc/apk/keys/admin@openresty.com-5ea678a6.rsa.pub \
	&& apk add --no-cache luarocks5.1 openresty gcc musl-dev openssl-dev lua5.1-dev \
	&& luarocks-5.1 install lapis \
	&& luarocks-5.1 install inspect

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

CMD /usr/local/openresty/nginx/sbin/nginx -g 'daemon off; master_process on;'
