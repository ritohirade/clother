class UsersController < ApplicationController
    def new 
    end
    def create
    end
    def index
    end
    def show
        @user = User.find(params[:id])
    end
    def edit
        @user = User.find(params[:id])
    end
    def destroy
    end
    def info
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to info_user_path(current_user)
    end

    private 
    def user_params
        params.require(:user).permit(:name, :profile_image)
    end
end
