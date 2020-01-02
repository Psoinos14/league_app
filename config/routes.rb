Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/champs" => "champs#index"
    get "/champs/:id" => "champs#show"
    post "/champs" => "champs#create"
    patch "/champs/:id" => "champs#update"
    delete "/champs/:id" => "champs#destroy"
  end
end
