class ChangeType < ActiveRecord::Migration[5.2]
  def up
    if Rails.env.development? || Rails.env.test?
      change_column :dreams, :opened, :integer
    else Rails.env.production?
      change_column :dreams, :opened, 'integer USING CAST(opened AS integer)'
    end
  end

  def down
    change_column :dreams, :opened, :integer
  end
end
