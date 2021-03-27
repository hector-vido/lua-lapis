#!/bin/bash

OPENRESTY_REPO="deb http://openresty.org/package/debian $(lsb_release -sc) openresty"

# Lua e LuaRocks
apt-get update
apt-get install -y vim git lua5.1 luarocks lua-inspect liblua5.1-dev libssl-dev
apt-get clean

# OpenResty
apt-get install -y --no-install-recommends wget gnupg ca-certificates
wget -O - https://openresty.org/package/pubkey.gpg | apt-key add -
echo "$OPENRESTY_REPO" > /etc/apt/sources.list.d/openresty.list
apt-get update && apt-get -y install openresty
apt-get clean

# Lapis
luarocks install lapis

mkdir -p /opt/app
if [ ! -f /opt/app/app.lua ]; then
	cp /vagrant/app.lua /opt/app
fi
cp /vagrant/nginx.conf /etc/openresty/nginx.conf
systemctl restart openresty
