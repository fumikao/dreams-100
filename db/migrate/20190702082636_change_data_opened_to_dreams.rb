class ChangeDataOpenedToDreams < ActiveRecord::Migration[5.2]
  def change
    change_column :dreams, :opened, :integer
  end
end
