class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << ('a'..'z').to_a.sample }
  end

  def score
    @score = params[:score]

    response = URI.open(https://wagon-dictionary.herokuapp.com/@score)
    json = JSON.parse(response.read)

  end
end
