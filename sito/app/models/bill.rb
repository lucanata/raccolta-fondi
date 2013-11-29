class Bill < ActiveRecord::Base

	attr_accessible :totale, :campaign_id, :user_id

	validates :totale, :presence => true
	
	#validates :campaign_id, :presence => true
	#validates :user_id, :presence => true
	
	belongs_to :user
	belongs_to :campaign
	has_many :aims
end
