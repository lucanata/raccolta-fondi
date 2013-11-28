class AddBillIdToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :bill_id, :integer
  end
end
