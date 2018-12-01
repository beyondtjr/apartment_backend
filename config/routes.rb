Rails.application.routes.draw do
  resources :blogs
  resources :apartments
  devise_for :users, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/apartments/users/:user_id' => 'apartments#userapts'
  get '/apartments/email/:user_id' => 'apartments#user_email'

end
