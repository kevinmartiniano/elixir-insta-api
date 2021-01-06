defmodule InstaApi.Repo.Migrations.CreateLikePhotos do
  use Ecto.Migration

  def change do
    create table(:like_photos) do
      add :user_id, :integer
      add :photo_id, references(:photos, on_delete: :delete_all, type: :id),
        null: false

      timestamps()
    end

  end
end
