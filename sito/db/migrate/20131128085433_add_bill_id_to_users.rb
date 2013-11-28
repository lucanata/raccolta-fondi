class AddBillIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bill_id, :integer
  end
end
