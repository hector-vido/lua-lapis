FROM alpine:3.12

RUN apk add --no-cache luarocks5.1 gcc musl-dev openssl-dev lua5.1-dev \
	&& luarocks-5.1 install lapis

FROM alpine:3.12

EXPOSE 80

RUN echo "http://openresty.org/package/alpine/v3.12/main" >> /etc/apk/repositories \
	&& wget 'http://openresty.org/package/admin@openresty.com-5ea678a6.rsa.pub' -O /etc/apk/keys/admin@openresty.com-5ea678a6.rsa.pub \
	&& apk add --no-cache lua5.1 lua5.1-inspect lua5.1-sql-mysql openresty

COPY --from=0 /usr/share/lua /usr/share/lua
COPY --from=0 /usr/local/share/lua /usr/local/share/lua
COPY --from=0 /usr/local/lib/lua /usr/local/lib/lua
COPY --from=0 /usr/local/bin/lapis /usr/local/bin/

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

WORKDIR /opt/app

CMD /usr/local/openresty/nginx/sbin/nginx -g 'daemon off; master_process on;'
