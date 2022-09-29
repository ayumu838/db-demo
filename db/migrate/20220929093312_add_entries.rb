class AddEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.references :work, null: false, index: true, foreign_key: true
      t.references :member, null: true, index: false, foreign_key: true
      t.datetime :entry_date
      t.timestamps null: false
    end
  end
end
