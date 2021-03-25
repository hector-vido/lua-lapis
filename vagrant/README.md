# Lapis

Lapis is a framework for building web applications using [Lua](https://lua.org/) or [MoonScript](https://moonscript.org/) that runs inside of a customized version of [Nginx](https://nginx.org/) called [OpenResty](https://openresty.org/).

This `Vagrantfile` creates a Debian 10 machine with everything needed to start programming in Lua with Lapis framework, including build packages like `luarocks` and `gcc`.

## English

### How to Run

You'll need a lest [VirtualBox](http://virtualbox.org/) and [Vagrant](https://www.vagrantup.com), clone this repository and start the provisioning:

```bash
git clone https://github.com/hector-vido/lua-lapis.git
cd lua-lapis/vagrant
vagrant up
```

By default our application should be in `/opt/app` and we can access it on address `172.27.11.10:80`.

## Português

### Como Rodar

Você precisa ao menos do [VirtualBox](http://virtualbox.org/) e do [Vagrant](https://www.vagrantup.com), clone este repositório e comece o provisionamento:

```bash
git clone https://github.com/hector-vido/lua-lapis.git
cd lua-lapis/vagrant
vagrant up
```

Por padrão nossa aplicação deverá estar em `/opt/app` e podemos acessá-lo no endereço `172.27.11.10:80`.
