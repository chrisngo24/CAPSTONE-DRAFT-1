class Api::WordsController < ApplicationController

  def create
    @word = Word.new(
      # wordnik_api_id: params[:wordnik_api_id],
      word: params[:word],
      definition: params[:definition],
      user_id: current_user.id
    )
    if @word.save
      render "show.json.jbuilder"
    else
      render json: {errors: @word.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @word = Word.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
