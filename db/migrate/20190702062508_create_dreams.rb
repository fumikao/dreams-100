class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.string :content, null: false
      t.integer :status, null: false, default: 0
      t.boolean :opened, null: false, default: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
