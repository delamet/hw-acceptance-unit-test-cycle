require 'rails_helper'

describe  MoviesController, :type => :controller do 
    describe "index" do 
        it "Movies does not equal nil" do 
            get :index
            assigns(:movies).should_not == nil
        end
    end
    
    describe "destroy" do 
        it "See if movie gets destroyed" do 
            movie = Movie.create(:title => "test")
            get :destroy, :id => movie
            same_movie = Movie.find_by_title("title")
            same_movie.should == nil
        end
    end
    
    describe "same_director redirec to index" do 
        it "Should redirect to index" do 
            movie = Movie.create(:title => "test movie", :director => "")
            get :same_director, {:title => movie.title}
            expect(response).to redirect_to(movies_path)
        end
        
    end
    
    describe "same_director should display director" do 
        it "Should not redirect to index" do 
            movie = Movie.create(:title => "test movie2", :director => "director")
            get :same_director, {:title => movie.title}
            assigns(:movies).should_not == nil
        end
        
    end
    
end