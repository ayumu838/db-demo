class AddWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.references :shop, null: false, index: true, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.integer :salary, null: false
      t.timestamps null: false
    end
  end
end
