defmodule InstaApi.Photos do
  @moduledoc """
  The Photos Context
  """

  import Ecto.Query, warn: false

  alias InstaApi.Repo
  alias InstaApi.Schema.Photos.Photo

  def list_photos do
    Repo.all(Photo)
  end
end
