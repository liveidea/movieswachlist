class DropTables < ActiveRecord::Migration
  def change
  	drop_table :to_watches
  	drop_table :watcheds
  end
end
