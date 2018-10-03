class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def movies_with_same_director
    puts "Director is #{director}"
    all_movies = Movie.all
    movies = []
    all_movies.each do |movie| 
      if movie.director == director && movie.title != title
        movies.push(movie)
      end
    end
    return movies
  end
end
