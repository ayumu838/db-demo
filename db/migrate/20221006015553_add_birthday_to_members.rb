class AddBirthdayToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :birthday, :date, after: :mail
  end
end
