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
    @wordnik_words = Unirest.get("https://api.wordnik.com/v4/word.json/#{params[:search].downcase}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{ENV["WORDNIK_API_KEY"]}")

    # puts "*" * 50
    # p @wordnik_words.body
    # p ENV["WORDNIK_API_KEY"]
    # puts "*" * 50

    render json: @wordnik_words.body
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
      params[:tags].each do |tag_name|
        tag_name = tag_name.downcase
        tag = Tag.find_or_create_by(name: tag_name)
        TagWord.create(word_id: @word.id, tag_id: tag.id, user_id: current_user.id)
      end
      render "show.json.jbuilder"
    else
      render json: {errors: @word.errors.full_messages}, status: :bad_request
    end
  end
end


