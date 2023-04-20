class MovieController < ApplicationController
    

    def index
        @movies = Movie.all
    end
    def show
        @movie = Movie.find(params[:id])
    end
    def new
        @movie = Movie.new
    end
    def create
        @movie = Movie.create(movie_params)
        if @movie.valid?
            redirect_to movies_path
        end
    end
    def destroy
        @movie = Movie.find(params[:id])
            if @movie.destroy
                redirect_to movies_path
            end
        end
    def edit
            @movie = Movie.find(params[:id])
    end
    def update 
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)
        if @movie.valid?
            redirect_to movies_path
        end
    end
    
    
    private 

    def movie_params
        params.require(:movie).permit(:name, :rating, :review)
    end
end
