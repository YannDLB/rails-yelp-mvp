Rails.application.routes.draw do
  get '/', to: 'restaurants#index'
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[create]
  end
end
