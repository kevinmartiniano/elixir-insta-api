defmodule InstaApiWeb.IndexControllerTest do
  use InstaApiWeb.ConnCase

  test "GET /healthcheck", %{conn: conn} do
    conn = get(conn, "/healthcheck")

    assert %{
      "message" => "Success!",
    } = json_response(conn, 200)
  end
end
