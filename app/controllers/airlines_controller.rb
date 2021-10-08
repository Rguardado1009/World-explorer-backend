class AirlinesController < ApplicationController
   
    def index
        render json: Airline.all
    end

    def show
        airlines = Airline.find(params[:id])
        render json: airlines, serializer: AirlineSerializer
    end

   def increment_likes
        airline = Airline.find_by(id: params[:id])
        if airline
          airline.update(likes: airline.likes + 1)
          render json: airline
        else
          render json: { error: "airline not found" }, status: :not_found
        end
    end
   def increment_dislikes
        airline = Airline.find_by(id: params[:id])
        if airline
          airline.update(dislikes: airline.dislikes + 1)
          render json: airline
        else
          render json: { error: "airline not found" }, status: :not_found
        end
    end

    def airline_params
        params.permit(:id, :airline, :likes, :dislikes)
    end
end
