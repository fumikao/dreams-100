class ChangeDataOpenedOfDream < ActiveRecord::Migration[5.2]
  def change
    change_column :dreams, :opened, :integer, default: 1
  end
end
