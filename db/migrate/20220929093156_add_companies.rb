class AddCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.timestamps null: false
    end
  end
end
