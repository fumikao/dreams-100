class AddRowOrderToDreams < ActiveRecord::Migration[5.2]
  def change
    remove_column :dreams, :row_order
    add_column :dreams, :row_order, :integer
  end
end
