class RemoveAndAddColumn < ActiveRecord::Migration[5.2]
  def change
    def up
      if Rails.env.development? || Rails.env.test?
        change_column :dreams, :opened, :integer
      else Rails.env.production?
        remove_column :dreams, :opened, :boolean
        add_column :dreams, :opened, :integer
      end
    end
  
    def down
      change_column :dreams, :opened, :boolean
    end
  end
end
