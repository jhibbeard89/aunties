class UpdateDateFieldEntryOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :pickup_time
    add_column :orders, :pickup_time, :datetime
  end
end
