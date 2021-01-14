defmodule InstaApi.Schema.Photos.Photo do
  @moduledoc """
  This module is responsable for determinate the schema of Photo.
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "photos" do
    field :caption, :string
    field :image_url, :string

    timestamps()
  end

  @doc false
  def changeset(photos, attrs) do
    photos
    |> cast(attrs, [:image_url, :caption])
    |> validate_required([:image_url, :caption])
  end
end
