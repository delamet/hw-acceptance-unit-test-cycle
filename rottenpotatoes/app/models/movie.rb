class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def movies_with_same_director
    all_movies = Movie.all
    movies = []
    if director == "" || director == nil
      # No director field, return nil
      return nil
    end
    all_movies.each do |movie| 
      if movie.director == director && movie.title != title
        movies.push(movie)
      end
    end
    return movies
  end
end