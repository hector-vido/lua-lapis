# Lapis

Lapis is a framework for building web applications using [Lua](https://lua.org/) or [MoonScript](https://moonscript.org/) that runs inside of a customized version of [Nginx](https://nginx.org/) called [OpenResty](https://openresty.org/).

## English

Images can be build with this repository or download from `hectorvido/lapis`. The default one is a little heavier than other options but has everything you need.

### How to Run

To use these images we need to make our application available in `/opt/app` and connect on port `80`:

```bash
docker run -ti --rm -p 8080:80 -v $PWD:/opt/app lapis:alpine
```

After this, we can connect on `localhost:8080` to reach our application:

```bash
curl localhost:8080
```

### Images

These images was based on **debian** and **alpine**. Each one has two types:

- **full** images contains everything need to use luarocks, including development libraries and gcc;
- **slim** images remove every package related to compilation process.

Images without tag, like `lapis:buster`, `lapis:alpine` or `lapis:latest` are based on **full**.

## Português

As imagens podem ser construídas através deste repositório ou baixadas de `hectorvido/lapis`. A imagem padrão é um pouco mais pesada que as outras opções, mas possuí tudo o que você precisa.

### Como Rodar

Para utilizar estas imagens precisaremos deixar nossa aplicação disponível em `/opt/app` e conectar na porta `80`:

```bash
docker run -ti --rm -p 8080:80 -v $PWD:/opt/app lapis:alpine
```

Depoios disso podemos conectar em `localhost:8080` para acessar nossa aplicação:

```bash
curl localhost:8080
```

### Imagens

Estas imagens são baseadas em **debian** e **alpine**. Cada uma tem dois tipos:

- **full** são imagens que contêm tudo o que é necessário para usar o luarocks, incluindo bibliotecas de desenvolvimento e o gcc;
- **slim** são imagens com todos os pacotes relacionados ao processo de compilação removidos;

Imagens sem tag, como `lapis:buster`, `lapis:alpine` ou `lapis:latest` são baseadas na versão **full**.
