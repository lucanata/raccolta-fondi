class AddBillIdToAims < ActiveRecord::Migration
  def change
    add_column :aims, :bill_id, :integer
  end
end
