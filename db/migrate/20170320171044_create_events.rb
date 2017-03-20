class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name,       limit: 50, null: false
      t.text :description,  null: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
