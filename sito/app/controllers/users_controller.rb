class UsersController < ApplicationController

	load_and_authorize_resource

    def show
        #@user = current_user
        @user = User.find(params[:id])
    end

    def index
    	@users = User.all
    end
end
