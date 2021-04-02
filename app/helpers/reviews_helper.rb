module ReviewsHelper

    def form_url_helper(campsite)
        campsite ? campsite_reviews_path(campsite) : reviews_path
    end

end