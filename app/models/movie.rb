class Movie < ActiveRecord::Base
  def self.all_ratings
    pluck(:rating).uniq
  end

  def self.with_ratings(ratings_list)
    if ratings_list.nil?
      all
    else
      where(rating: ratings_list)
    end
  end
end
