class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
	flash[:error] = "errore, non puoi accedere a questa pagina se non sei admin"
	redirect_to root_url
  end
end