class CreateSelectedFilms < ActiveRecord::Migration
  def change
    create_table :selected_films do |t|
      t.boolean :watched
      t.integer :user_id
      t.integer :film_id

      t.timestamps
    end
  end
end
