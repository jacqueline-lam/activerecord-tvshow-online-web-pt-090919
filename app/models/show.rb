class Show < ActiveRecord::Base
  
  # Returns the highest rating of all the TV shows
  def self.highest_rating
    Show.maximum(:rating)
    binding.pry
  end
  
  # Returns the tv show with the highest rating
end
