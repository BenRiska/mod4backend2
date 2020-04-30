class UsersController < ApplicationController
    
    def index 
        users = User.all
        render json: users, include: ["transactions", "currencies"]
    end

    def show
        user = User.find(params[:id])
        render json: user, include: ["transactions", "currencies"]
    end
end
