class Api::DefinitionsController < ApplicationController

  def create
    @definition = Definition.new(
      word_id: params[:word_id],
      definition: params[:definition],
      user_id: current_user.id
    )

    if @definition.save
      render "show.json.jbuilder"
    else
      render json: {errors: @definition.errors.full_messages}, status: :bad_request
    end
  end
end

# DO I NEED MORE DEFINITION   FUNCTIONALITY HERE?
