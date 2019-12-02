class Show < ActiveRecord::Base
  
  # Returns the highest rating of all the TV shows
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  #
end
