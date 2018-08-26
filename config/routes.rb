Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/words" => "words#index"
    post "/words" => "words#create"
    post "/definitions" => "definitions#create"
    post "/tags" => "tags#create"
    post "/tag_words" => "tag_words#create"
    post "/comments" => "comments#create"
  end
end
