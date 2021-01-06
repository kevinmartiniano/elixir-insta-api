defmodule InstaApiWeb.IndexControllerTest do
  use InstaApiWeb.ConnCase

  test "GET /healthcheck", %{conn: conn} do
    conn = get(conn, "/healthcheck")
    assert conn.resp_body =~ "Success!"
  end
end
