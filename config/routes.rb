Rails.application.routes.draw do
  namespace :api do
    get 'locations/search'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
