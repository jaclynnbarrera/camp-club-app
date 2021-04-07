module ReviewsHelper

    def form_url_helper(campsite)
        #if campsite exists,
        campsite ? campsite_reviews_path(campsite) : campsites_path
    end

    def find_user(review)
        @user = User.find_by(id: review.user_id).username
    end
    
end

