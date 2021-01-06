defmodule InstaApi.Repo do
  use Ecto.Repo,
    otp_app: :insta_api,
    adapter: Ecto.Adapters.Postgres
end
