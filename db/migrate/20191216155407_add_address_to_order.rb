class AddAddressToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :address1, :string
    add_column :orders, :address2, :string
    add_column :orders, :county, :string
    add_column :orders, :phone, :string
  end
end
