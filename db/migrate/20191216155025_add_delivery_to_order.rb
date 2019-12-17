class AddDeliveryToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :delivery, :boolean
  end
end
