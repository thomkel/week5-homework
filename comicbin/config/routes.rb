Comicbin::Application.routes.draw do

  root "comics#index"

  get "/comics" => "comics#index"

  get "/show" => "comics#show"

  get "/new" => "comics#new"

  get "/delete" => "comics#destroy"

end
