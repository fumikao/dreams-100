class Addandremovecolumn < ActiveRecord::Migration[5.2]
  def up
    remove_column :dreams, :opened
    add_column :dreams, :opened, :integer
  end

  def down
    remove_column :dreams, :opened
    add_column :dreams, :opened, :integer
  end
end
