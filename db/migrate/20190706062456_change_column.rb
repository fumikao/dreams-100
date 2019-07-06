class ChangeColumn < ActiveRecord::Migration[5.2]
  def up
    if Rails.env.development? || Rails.env.test?
      change_column :dreams, :opened, :integer
    else Rails.env.production?
      change_column :dreams, :opened, 'integer USING opened::integer'
    end
  end
end
