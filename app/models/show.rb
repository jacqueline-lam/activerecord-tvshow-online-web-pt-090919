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
end
