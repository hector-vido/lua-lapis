FROM debian:buster-slim

EXPOSE 80

RUN echo "deb http://openresty.org/package/debian buster openresty" > /etc/apt/sources.list.d/openresty.list \
	&& apt-get update --allow-insecure-repositories \
	&& apt-get install --allow-unauthenticated -y git wget lua5.1 luarocks liblua5.1-dev libssl-dev gnupg2 openresty \
	&& wget -O - https://openresty.org/package/pubkey.gpg | apt-key add - \
	&& luarocks install lapis \
	&& luarocks install inspect \
	&& mkdir -p /opt/app

COPY nginx.conf /etc/openresty/nginx.conf

WORKDIR /opt/app

CMD /usr/local/openresty/nginx/sbin/nginx -g 'daemon off; master_process on;'
