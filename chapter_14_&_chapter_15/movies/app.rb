require 'sinatra'
require 'movie'

get('/movies') do
    @movie = []
    @movie[0] = Movie.new
    @movie[0].title = "Jaws"
    @movie[1] = Movie.new
    @movie[1].title = "Aliens"
    @movie[2] = Movie.new
    @movie[2].title = "The Princess Bride"
    erb :index
end

