Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: [:destroy]
end
