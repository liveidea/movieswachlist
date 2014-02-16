class AddColumnToFilm1 < ActiveRecord::Migration
  def change
    add_column :films, :popularity, :integer
  end
end
