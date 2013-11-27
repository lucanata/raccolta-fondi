class User < ActiveRecord::Base
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessible :nome, :cognome, :via, :ncivico, :comune, :prov, :datanascita, :piva_codf, :email, :password, :password_confirmation
  
  validates :nome, :presence => true
  
  validates :via, :presence => true
  
  validates :ncivico, :presence =>true
  
  validates :prov, :presence => true
  
  validates :paese, :presence => true
  
  validates :cap, :presence => true, :numericality => {:length => { is: 5 }}
  
  validates_date :datanascita, :presence => true, :timeliness => {:before => lambda {18.years.ago}, :type => :date}
  
  validates :piva_codf, :presence => true, :length => { in: 11..16 }


end

