FROM debian:buster-slim

RUN apt-get update \
	&& apt-get install -y git lua5.1 luarocks lua-inspect liblua5.1-dev libssl-dev \
	&& luarocks install lapis

FROM debian:buster-slim

COPY --from=0 /usr/local/bin/lapis /usr/local/bin/
COPY --from=0 /usr/share/lua/5.1 /usr/share/lua/5.1
COPY --from=0 /usr/local/share/lua /usr/local/share/lua
COPY --from=0 /usr/local/lib/lua /usr/local/lib/lua
COPY --from=0 /usr/local/lib/luarocks /usr/local/lib/luarocks
COPY --from=0 /usr/lib/x86_64-linux-gnu/lua /usr/lib/x86_64-linux-gnu

RUN echo "deb http://openresty.org/package/debian buster openresty" > /etc/apt/sources.list.d/openresty.list \
    && apt-get update --allow-insecure-repositories \
    && apt-get install --allow-unauthenticated -y wget lua5.1 lua-sql-mysql lua-inspect gnupg2 openresty \
    && wget -O - https://openresty.org/package/pubkey.gpg | apt-key add -

COPY nginx.conf /etc/openresty/nginx.conf

WORKDIR /opt/app

CMD /usr/local/openresty/nginx/sbin/nginx -g 'daemon off; master_process on;'
