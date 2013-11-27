class RegistrationController < Devise::RegistrationsController

def new

@user= User.new

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
@user.email = params[:user][:email]
@user.password = params[:user][:password]
@user.password_confirmation =params[:user][:password_confirmation]

if @user.errors.blank?

@user.save

redirect_to index_path
else
render :action => "new"
end
end

end
