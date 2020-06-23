Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
      resources :diaries do
        resources :parises,only: [:create, :edit, :destroy]
      end
      resources :likes, only: [:create, :destroy]
      resources :genres, only: [:create, :edit, :destroy]
      resources :users, only: :show
    end
  end
end
