class ReviewsController < ApplicationController
    
    def show  
       @review = Review.find(params[:id])
    end

    def index
        if params[:campsite_id]
            @campsite = Campsite.find_by(id: params[:campsite_id])
            @reviews = @campsite.reviews
        else
            redirect_to campsites_path
        end
    end

    def new 
        if params[:campsite_id]
            @campsite = Campsite.find_by(id: params[:campsite_id])
            @review = @campsite.reviews.build
        else
            @review = Review.new
        end
    end

    def create
        @review = Review.create(review_params)
        @review.user = current_user
        if params[:campsite_id]
            @review.campsite_id = params[:campsite_id]
        end

        if @review.save
            redirect_to campsite_path(@review.campsite)
        else
            @errors = @review.errors.full_messages
            render :new
        end
    end

    def edit 
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end

    private

    def review_params
        params.require(:review).permit(:rating, :review, :campsite_id)
    end

end