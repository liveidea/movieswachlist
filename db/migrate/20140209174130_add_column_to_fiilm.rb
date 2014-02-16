class AddColumnToFiilm < ActiveRecord::Migration
  def change
    add_column :films, :video_url, :string
  end
end
