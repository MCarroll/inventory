Rails.application.routes.draw do
  root "locations#index"
  resources :locations do
    collection { post :import }
  end
end
