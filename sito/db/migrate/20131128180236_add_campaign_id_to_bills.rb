class AddCampaignIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :campaign_id, :integer
  end
end
