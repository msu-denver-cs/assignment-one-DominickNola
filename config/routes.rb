Rails.application.routes.draw do

  resources :parts do
    collection do
      get 'search'
    end
  end

  resources :cars do
    collection do
      get 'search'
    end
  end

  resources :makes do
    collection do
      get 'search'
    end
  end

  resources :parts
  resources :cars
  resources :makes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
