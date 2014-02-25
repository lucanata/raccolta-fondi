class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    if user.nome == nil #user not registred
      can :read, Campaign

    else
      if user.admin?  # admin user
        can :manage, :all
        can :update, Campaign
      #cannot :destroy, User, :id => user.id
      else # user.admin? == false  # Non-admin user
      #posso fare tutte le azioni su campagna
      #tranne distruggerla e modificare quella di altri
        can :create, Bill
        can :show, Bill,:user_id=>user.id
        can :mybills, Bill, :user_id=>user.id


        
        can :mycampaigns,Campaign
        can :index, Campaign
        can :show, Campaign
        can :create, Campaign 
        can :update,Campaign, :user_id=>user.id
        
        can :show, User, :id=>user.id 
        can :update, User, :id=>user.id
        
        cannot :destroy, Campaign
      
      end
      #posso fare tutto su bill tranne distruggere/aggiornare
     # can :manage, Bill
      #cannot :update, Bill 
      #cannot :destroy, Bill    
    #else #user not registred
     # can :read, :all
    end
  end
end