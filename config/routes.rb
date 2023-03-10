Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[create]
    resources :reviews, only: %i[create]
  end

  resources :bookmarks, only: [:destroy]
end
