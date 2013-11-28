class Campaign < ActiveRecord::Base
	attr_accessible :nome, :descrizione, :durata, :goal, :chiusa, :bill_id

 	validates :nome, :presence => true,
                    :uniqueness => true

  	validates :descrizione, :presence => true

  	validates_date :durata, :presence => true,
				 :on_or_after => :today

  	validates :goal, :presence => true,
				:numericality => { :greater_than => 0 }

	
	has_one :user
	belongs_to :bill
  	#validates :chiusa, :presence => true
 
end
