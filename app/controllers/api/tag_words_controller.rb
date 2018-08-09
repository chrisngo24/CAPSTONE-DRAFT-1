class Api::TagWordsController < ApplicationController

  def create
    @tag_word = TagWord.new(
      word_id: params[:word_id],
      tag_id: params[:tag_id],
      user_id: params[:user_id]
    )
    if @tag_word.save
      render "show.json.jbuilder"
    else
      render json: {errors: @tag_word.errors.full_messages}, status: :bad_request
    end
  end
end
