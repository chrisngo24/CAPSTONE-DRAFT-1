class Api::WordsController < ApplicationController
  require 'unirest'

  def index
    @words = Word.all

    search_terms = params[:search]
    if search_terms
      @words = @words.where("word ILIKE ?", "%" + search_terms + "%")
    end
    render "index.json.jbuilder"
  end

  def wordnik
    @wordnik_words = Unirest.get("https://api.wordnik.com/v4/word.json/#{params[:search]}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{ENV["WORDNIK_API_KEY"]}")

    # word = @wordnik_words.body["word"]

    puts "*" * 50
    p @wordnik_words.body
    p ENV["WORDNIK_API_KEY"]
    puts "*" * 50

    # render json: {message: "hello", daa}
    render json: @wordnik_words.body

#     @wordnik_words = Unirest.get("https://api.wordnik.com/v4/word.json/#{search_terms}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=
# #{ENV["WORDNIK_API_KEY"]}")

#     definition = wordnik_words.body

#     @wordnik_words = Unirest.get("https://api.wordnik.com/v4/word.json/#{search_terms}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=
# #{ENV["WORDNIK_API_KEY"]}")

#     example = wordnik_words.body["examples"]

    # render "index.json.jbuilder"
  end

  def create
    @word = Word.new(
      # wordnik_api_id: params[:wordnik_api_id],
      word: params[:word],
      definition: params[:definition],
      example: params[:example],
      user_id: current_user.id
    )
    if @word.save
      render "show.json.jbuilder"
    else
      render json: {errors: @word.errors.full_messages}, status: :bad_request
    end
  end
end
