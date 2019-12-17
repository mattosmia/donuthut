class AddTimeToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :collection_time, :datetime
  end
end
