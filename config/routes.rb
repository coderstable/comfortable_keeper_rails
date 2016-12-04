Rails.application.routes.draw do
  root 'top#index'
  get    'signup'     => 'top#signup'
  post   'login'   => 'top#check'
  delete 'logout'  => 'top#destroy'
  get   'device'   => 'top#device'

  resources :devices
end
