class AirlinesController < ApplicationController
    def index
        render json: Airline.all
    end

    def show
        airlines = Airline.find(params[:id])
        render json: airlines, serializer: AirlineSerializer
    end
end
