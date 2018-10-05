require 'rails_helper'

describe "Movies: movies with same director method" do
    describe "same director" do
        it "Should return a movie with same director" do
            test_movie = Movie.create(:title => "test_movie", :rating => "G", :director => "director")
            test_movie2 = Movie.create(:title => test_movie2, :rating => "G", :director => "director")
            movies = test_movie.movies_with_same_director
            movies.should include(test_movie2)
        end
    end
    
    describe "different director" do
        it "Should not return any movies" do
            test_movie = Movie.create(:title => "test_movie", :rating => "G", :director => "director")
            test_movie2 = Movie.create(:title => test_movie2, :rating => "G", :director => "j")
            movies = test_movie.movies_with_same_director
            movies.should_not include(test_movie2)
        end
    end
    
    describe "no director" do
        it "Shoult return nil indicating the movie has no director" do 
            test_movie = Movie.create(:title => "test_movie", :rating => "G")
            movies = test_movie.movies_with_same_director
            movies.should == nil
        end
    end
end

