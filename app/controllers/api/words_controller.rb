class Api::WordsController < ApplicationController

  def index
    @words = Word.all

    search_terms = params[:search]
    if search_terms
      @words = @words.where("word ILIKE ?", "%" + search_terms + "%")
    end

    # @word = Word.find_by(id: params[:id])
    render "index.json.jbuilder"
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
