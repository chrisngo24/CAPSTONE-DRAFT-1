Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/words" => "words#index"
    post "/words" => "words#create"
    post "/definitions" => "definitions#create"
    get "/tags" => "tags#index"
    post "/tags" => "tags#create"
    get "tag_words" => "tag_words#index"
    post "/tag_words" => "tag_words#create"
    post "/comments" => "comments#create"

    get "/wordnik" => "words#wordnik"
  end
end
