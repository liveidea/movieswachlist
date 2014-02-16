class ChangeColumnSelectedFilm < ActiveRecord::Migration
  def change
  	change_table :selected_films do |t|
  		t.change :watched, :boolean, default: false
  	end
  end
end
