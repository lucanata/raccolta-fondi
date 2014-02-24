class Campaign < ActiveRecord::Base
	attr_accessible :id, :nome, :descrizione, :durata, :goal, :chiusa, :user_id

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
    
    #restituisce hashmap (id,cash_to_goal) ordinato in modo crescente
    def self.obb
        array = Array.new
        Campaign.where(chiusa: false).each do |f|
            array.push(f.id)
            array.push(f.goal - Bill.where(campaign_id: f.id).sum(:totale))
        end
        h = Hash[array.each_slice(2).to_a].sort_by { |id,to_goal| to_goal }
        indexes = h.first(5).map {|row| row[0]}
        result = Campaign.find(indexes).index_by(&:id).slice(*indexes).values
        return result
    end

	belongs_to :user


	has_many :bills
  	#validates :chiusa, :presence => true
 
end
