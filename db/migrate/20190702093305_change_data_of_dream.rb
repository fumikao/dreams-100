class ChangeDataOfDream < ActiveRecord::Migration[5.2]
  def change
    change_column :dreams, :opened, :string, default: 1
    change_column :dreams, :status, :string, default: 0
  end
end
