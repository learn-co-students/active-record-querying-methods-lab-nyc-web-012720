class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    # this method should return the show with the highest rating.
    # hint: use the highest_rating method as a helper method
    def self.most_popular_show
        self.find_by(rating: self.highest_rating)
        # Song.where("rating=?", self.highest_rating).first
        # self.where("rating =?",self.highest_rating).first
    end


    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        self.find_by(rating: self.lowest_rating)
    end

    def self.ratings_sum
        # self.sum(:rating)
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating>?",5)
        # self.where("rating?>",5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
        # self.order(:name)
    end




end
