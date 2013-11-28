class AddAimIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :aim_id, :integer
  end
end
