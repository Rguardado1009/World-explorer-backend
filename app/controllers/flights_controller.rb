class FlightsController < ApplicationController
    def index
        render json: Flight.all
    end
    
    def show
        flights =Flight.find(params[:id])
        render json: flights
    end
end
