require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('a'..'z').to_a.sample
    end
  end

  def home
  end

  def score
    word_letters = params[:word].split("")
    # cacao
    letters = params[:letters].split("")
    # ['C', 'A' ... ]
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)

    if user["found"] = true

    # user["found"] => true ou false
    raise
  end

end


if params[:letter]
  @letters =
end
