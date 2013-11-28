class Bill < ActiveRecord::Base

	attr_accessible :totale, :aim_id

	validates :totale, :presence => true
	
	validates :aim_id, :presence => true
	
	has_one :user
	has_one :campaign
	belongs_to :aim
end
