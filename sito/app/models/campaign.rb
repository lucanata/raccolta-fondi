class Campaign < ActiveRecord::Base
	attr_accessible :nome, :descrizione, :durata, :goal, :chiusa
end
