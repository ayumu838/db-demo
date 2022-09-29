class AddMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.string :mail, null: false
      t.timestamps null: false
    end
  end
end
