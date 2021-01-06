FROM bitwalker/alpine-elixir-phoenix:latest

WORKDIR /app

COPY mix.exs .
COPY mix.lock .

COPY . .

CMD mix deps.get && cd assets && npm install && cd .. && mix phx.server