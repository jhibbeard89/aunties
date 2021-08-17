class AddUserClassificationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :auntie, :boolean
  end
end
