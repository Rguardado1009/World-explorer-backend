class UsersController < ApplicationController
  

    # def show
    #     if current_user
    #       render json: current_user, status: :ok
    #     else
    #       render json: { user: 'not logged in' }, status: :unauthorized
    #     end
    #   end

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
        params.permit(:name, :username, :password, :password_confirmation) 
    end 
end
