class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :authorize
  
    private
  
    # def current_user
    #   # use session to see who's currently logged in
    #   @current_user ||= User.find_by_id(session[:user_id])
    # end

    def authorize
      @current_user = User.find_by(id: session[:user_id])
      render json: { errors: ["Not Authorized"] }, status: 401 
      unless @current_user
      end
    end
  end