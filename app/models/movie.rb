class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date, :director_name
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def same_director
    Movie.where(:director_name => self.director_name)
  end
end
