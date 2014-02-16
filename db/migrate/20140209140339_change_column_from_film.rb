class ChangeColumnFromFilm < ActiveRecord::Migration
  def change
    change_table :films do |t|
      t.change :popularity, :integer, default: 0
    end
  end
end
