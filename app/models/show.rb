class Show < ActiveRecord::Base
  
  # Returns the highest rating of all the TV shows
  def self.highest_rating
    Show.maximum(:rating)
    #=> 10
  end
  
  # Returns the tv show with the highest rating
  def self.most_popular_show
    highest_rating = self.highest_rating
    Show.find_by(rating: highest_rating)
  end
  
  # Returns the lowest rating of all the TV shows
  def self.lowest_rating
  end
  
  # Returns the tv show with the lowest rating
  # def self.least_popular_show
  # end
  
  # def self.ratings_sum
  # end
  
  # def self.popular_shows
  # end
  
  # def self.shows_by_alphabetical_order
  # end
end
