class Campaign < ActiveRecord::Base
	attr_accessible :nome, :descrizione, :durata, :goal, :chiusa, :user_id

 	validates :nome, :presence => true,
                    :uniqueness => true

  	validates :descrizione, :presence => true

  	validates_date :durata, :presence => true,
				 :on_or_after => :today

  	validates :goal, :presence => true,
				:numericality => { :greater_than => 0 }

	#validates :user_id, :presence => true

	#definisco funzione somma che somma tutti i versamenti per una campagna	
	def somma
    		bills.inject(0) {|s,r| s += r.totale }
 	end

	belongs_to :user


	has_many :bills
  	#validates :chiusa, :presence => true
 
end
