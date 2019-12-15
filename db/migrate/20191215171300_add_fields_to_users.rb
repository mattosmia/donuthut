class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string, null: false
    add_column :users, :dob, :datetime
  end
end
