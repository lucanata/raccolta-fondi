class RegistrationController < Devise::RegistrationsController

def new

@user= User.new

end

def create

@user = User.new
@user.nome = params[:user][:nome]
@user.cognome = params[:user][:cognome]
#@user.datanascita = params[:user][:datanascita]

#dl=[:datanascita]

#d=Date.new(dl['(1i)'].to_i, dl['(2i)'].to_i, dl['(3i)'].to_i)
#dl.to_s
#@user.datanascita = dl

@user.datanascita = params[:user][:datanascita].map{|k,v| v}.join("-").to_date

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
