class Api::CommentsController < ApplicationController

  def create
    @comment = Comment.new(
      text: params[:text],
      user_id: params[:user_id],
      word_id: params[:word_id]
    )
    if @comment.save
      render "show.json.jbuilder"
    else
      render json: {errors: @comment.errors.full_messages}, status: :bad_request
    end
  end
end
