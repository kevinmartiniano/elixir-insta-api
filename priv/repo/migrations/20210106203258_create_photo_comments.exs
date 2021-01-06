defmodule InstaApi.Repo.Migrations.CreatePhotoComments do
  use Ecto.Migration

  def change do
    create table(:photo_comments) do
      add :text, :string
      add :user_id, :integer
      add :photo_id, references(:photos, on_delete: :delete_all, type: :id),
        null: false

      timestamps()
    end

  end
end
