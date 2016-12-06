Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  get    'signup'     => 'top#signup'
  post   'login'   => 'top#check'
  delete 'logout'  => 'top#destroy'
  get   'device'   => 'top#device'

  resources :devices
end
