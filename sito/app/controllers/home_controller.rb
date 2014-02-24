class HomeController < ApplicationController
    
    def index
            @campaigns=Campaign.where(chiusa: false).order(:durata).first(5)
            @tops = Campaign.obb
    end
end
