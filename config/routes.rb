Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :bands do
        get '/members', to: 'members#index'
        get '/members/:id', to: 'members#show'
      end
    end

    namespace :v2 do
      resources :bands do
        resources :members
        get '/instruments', to: 'bands#band_instruments'
      end
    end
  end

end
