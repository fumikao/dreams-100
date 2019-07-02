class ChangeDataOpenedOfDreams < ActiveRecord::Migration[5.2]
  def change
    change_column :dreams, :opened, :boolean
  end
end
