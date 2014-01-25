class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.integer :genre_id
      t.integer :ratings
      t.text :discription

      t.timestamps
    end
  end
end
