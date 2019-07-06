class ChangeOpened < ActiveRecord::Migration[5.2]
  def change
    change_column :dreams, :opened, :string
  end
end
