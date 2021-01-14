defmodule InstaApiWeb.PhotosControllerTest do
  use InstaApiWeb.ConnCase

  test "GET /photos", %{conn: conn} do
    conn = get(conn, "/photos")

    assert json_response(conn, 200) == []

    # assert conn.resp_body =~ "message"
    # assert conn.resp_body =~ "Success!"
  end
end
