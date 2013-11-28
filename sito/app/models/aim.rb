class Aim < ActiveRecord::Base
	attr_accessible :scopo, :importo

	validates :scopo, :presence => true

	validates :importo, :presence => true
	
	has_one :bill
end
