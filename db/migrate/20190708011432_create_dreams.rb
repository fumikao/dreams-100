class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.string :content, null: false
      t.string :status, null: false, default: 0
      t.string :opened, null: false, default: 1
      t.integer :row_order, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end