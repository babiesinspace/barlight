Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users do 
    resources :schedules
    resources :venues
    resources :regulars
  end
  resources :events
  resources :recurring_events
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

end


