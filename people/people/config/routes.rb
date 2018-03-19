Rails.application.routes.draw do
  resources :users
  get 'home/index'  #=> home#index
    @users = User.all

    #=> whenever instace var we initialise in this action, they will exist in the corresponding view

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
