defmodule InstaApi.PhotoComments do
  use Ecto.Schema
  import Ecto.Changeset

  schema "photo_comments" do
    field :text, :string
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(photo_comments, attrs) do
    photo_comments
    |> cast(attrs, [:text, :user_id])
    |> validate_required([:text, :user_id])
  end
end
