class FilmsController < ApplicationController

    def index
        @films = Film.all
    end

    def new
        @film = Film.new
    end

    def create
        @film = Film.create!(film_params)

        redirect_to "/"
    end

    def edit
        @film = Film.find params[:id]
    end

    def update
    end

    def show
        @film = Film.find params[:id]
    end

    private
    def film_params
        params.require(:film).permit(:title, :genre, :year, :image, :synopsis)
    end
end
