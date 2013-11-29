class Aim < ActiveRecord::Base
	attr_accessible :scopo, :importo, :bill_id

	validates :scopo, :presence => true

	validates :importo, :presence => true
	
	#validates :bill_id, :presence => true

	belongs_to :bill
end
