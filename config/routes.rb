Rails.application.routes.draw do
  # get 'songs/new'
  # get 'albums/index'
  # get 'albums/show'
  # get 'albums/new'
  # get 'albums/edit'
  # get 'artists/index'
  # get 'artists/show'
  # get 'artists/new'
  # get 'artists/edit'
  root to: 'pages#home'
  resources :artists, only: [:index, :show, :new, :create, :edit, :update] do
    resources :albums, only: [:index, :show, :new, :create]
  end
  resources :albums, only: [:edit, :update] do
    resources :songs, only: [:new, :create, :destroy]
  end
end
