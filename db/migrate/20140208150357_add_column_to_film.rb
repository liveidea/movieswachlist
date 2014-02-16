class AddColumnToFilm < ActiveRecord::Migration
  def change
    add_column :films, :image_url, :string
  end
end
