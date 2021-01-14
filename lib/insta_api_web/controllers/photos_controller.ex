defmodule InstaApiWeb.PhotosController do
  use InstaApiWeb, :controller

  alias InstaApi.Photos
  # alias InstaApi.Photos.Photo

  def index(conn, _params) do
    photos = Photos.list_photos()
    json(conn, photos)
  end
end
