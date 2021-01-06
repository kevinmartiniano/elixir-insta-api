defmodule InstaApiWeb.PageController do
  use InstaApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
