FROM elixir:latest

ENV TZ 'Asia/Tokyo'
ENV ND_VER '10.x'
ENV PHX_VER '1.4.9'

RUN set -x \
  && apt-get update -y \
  && apt-get install -y \
      curl \
      vim \
      inotify-tools \
  && curl -sL https://deb.nodesource.com/setup_${ND_VER} | bash - \
  && apt-get install nodejs -y \
  && npm install npm@latest -g \
  && apt-get clean

RUN set -x \
  && mix local.hex --force \
  && mix local.rebar --force \
  && mix archive.install hex phx_new ${PHX_VER} --force

WORKDIR /proj

CMD ["iex"]
