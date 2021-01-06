defmodule InstaApi.Repo.Migrations.CreatePhotos do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :image_url, :string
      add :caption, :string
      add :id_user, :integer

      timestamps()
    end

  end
end
