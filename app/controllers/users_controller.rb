class UsersController < ApplicationController
    
    def index 
        users = User.all
        render json: users, include: ["transactions", "currencies"]
    end

    def show
        user = User.find(params[:id])
        render json: user, include: ["transactions", "currencies"]
    end

    def create
        
        user = User.new(email: params[:email], name: params[:name], password: params[:password], balance: 0)
        if user.save
            
          render json: user,status: :ok
        else
          render json: {data:user.errors},status: :unprocessable_entity
        end
    end
end
