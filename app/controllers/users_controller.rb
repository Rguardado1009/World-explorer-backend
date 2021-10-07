class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: {error: ["Not authorized"]}, status: :unauthorized
        end 
    end 

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        if user.valid?
            render json: user, status: 201
        else
            render json: {error:["No Matching user or password"]}
        end
    end 

    private

    def user_params
        params.permit(:username, :password, :password_confirmation) 
    end 
end
