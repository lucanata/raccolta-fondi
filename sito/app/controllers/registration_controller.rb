class RegistrationController < Devise::RegistrationsController

    def new
        @user= User.new
    end
    
    def show
        @user = current_user
    end
    
    
    def update
        @user = User.find(current_user.id)
        if @user.update_attributes(params[:user])
            set_flash_message :notice, :updated
            # Sign in the user bypassing validation in case his password changed
            sign_in @user, :bypass => true
            redirect_to after_update_path_for(@user)
            else
            render "edit"
        end
    end
    
    
    
    
    def create

    @user = User.new
    @user.nome = params[:user][:nome]
    @user.cognome = params[:user][:cognome]
    #@user.datanascita = params[:user][:datanascita]
    years=params[:user]['datanascita(1i)'];
    month=params[:user]['datanascita(2i)'];
    days=params[:user]['datanascita(3i)'];
    d=Date.new(years.to_i,month.to_i,days.to_i)
    @user.datanascita = d#params[:user][:datanascita]

    @user.paese = params[:user][:paese]
    @user.prov = params[:user][:prov]
    @user.cap = params[:user][:cap]
    @user.via = params[:user][:via]
    @user.ncivico = params[:user][:ncivico]
    @user.piva_codf = params[:user][:piva_codf]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation =params[:user][:password_confirmation]

#if @user.errors.blank?

#           @user.save

#           redirect_to index_path
#       else
#           render :action => "new"
#       end

    if resource.save
        yield resource if block_given?
        if resource.active_for_authentication?
            set_flash_message :notice, :signed_up if is_flashing_format?
            sign_up(resource_name, resource)
            respond_with resource, :location => after_sign_up_path_for(resource)
        else
            set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
            expire_data_after_sign_in!
            respond_with resource, :location => after_inactive_sign_up_path_for(resource)
        end
    else
        clean_up_passwords resource
        respond_with resource
    end


    end

end
