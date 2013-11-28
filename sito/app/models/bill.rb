class Bill < ActiveRecord::Base

	attr_accessible :totale, :campaign_id, :user_id

	validates :totale, :presence => true
	
	#validates :campaign_id, :presence => true
	#validates :user_id, :presence => true
	
	has_one :user
	has_one :campaign
	belongs_to :aim
end
