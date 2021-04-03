module ReviewsHelper

    def form_url_helper(campsite)
        #if campsite exists,
        campsite ? campsite_reviews_path(campsite) : reviews_path
    end

    #form to post to /reviews
    #form to post to camspites/1/reviews

end

