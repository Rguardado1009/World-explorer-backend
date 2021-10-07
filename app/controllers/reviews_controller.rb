class ReviewsController < ApplicationController
    def index
        render json: Review.all
    end
    def show
        reviews =Review.find(params[:id])
        render json: reviews, 
    end
end
