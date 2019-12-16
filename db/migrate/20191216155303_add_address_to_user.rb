class AddAddressToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :county, :string
    add_column :users, :phone, :string
  end
end
