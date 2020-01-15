Rails.application.routes.draw do

  devise_for :users

  namespace :api, format: :json do

    namespace :user do
      resources :decks
    end

  end

end
