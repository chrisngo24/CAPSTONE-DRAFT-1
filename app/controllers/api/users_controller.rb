class Api::UsersController < ApplicationController
  def index
    users = User.all
    # render json: {message: "hello world"}
    render json: users.as_json
  end

  def show
    @user = User.find_by(id: params[:id])#.user_words
    render "show.json.jbuilder"
  end

# I NEED TO ADD INDEX TO SHOW ALL USER WORDS & DEFINITIONS
  

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password]
      )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
