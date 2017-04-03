class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name,               limit: 50
      t.string :address
      t.string :city,               limit: 25, null: false
      t.string :state,              limit: 25, null: false
      t.string :website

      t.timestamps null: false
    end
  end
end
