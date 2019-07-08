class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :likes
    drop_table :dreams
  end
end
