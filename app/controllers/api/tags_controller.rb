class Api::TagsController < ApplicationController
  
  def create
    @tag = Tag.new(
      name: params[:name]
    )
    if @tag.save
      render "show.json.jbuilder"
    else
      render json: {errors: @tag.errors.full_messages}, status: :bad_request
    end
  end
end

# DO I NEED MORE TAG FUNCTIONALITY HERE?
