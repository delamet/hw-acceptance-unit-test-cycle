class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def movies_with_same_director
    movies = Movie.where("director = \"#{director}\"").where("title != \"#{title}\"")
    return movies
  end
end
