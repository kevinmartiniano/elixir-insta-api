defmodule InstaApi.LikePhotos do
  use Ecto.Schema
  import Ecto.Changeset

  schema "like_photos" do
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(like_photos, attrs) do
    like_photos
    |> cast(attrs, [:user_id])
    |> validate_required([:user_id])
  end
end
