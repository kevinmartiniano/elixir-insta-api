defmodule InstaApiWeb.IndexController do
  use InstaApiWeb, :controller

  def index(conn, _params) do
    response = "Success!"
    json(conn, %{message: response})
  end
end
