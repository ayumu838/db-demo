class AddShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.references :company, null: false, index: false, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps null: false
    end
  end
end
