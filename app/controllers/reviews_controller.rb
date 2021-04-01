class ReviewsController < ApplicationController
    def show
        @review = Review.find_by(params[:id])
    end

    def index
        @reviews = Review.all
    end
end