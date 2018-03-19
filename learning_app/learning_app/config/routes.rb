Rails.application.routes.draw do
  root "home#index"
  get 'post' => 'home#post'
  #we can route two diffwerent routes to the same path
  # get 'named/:silly/:whatevs' => 'home#index'
  #http://localhost:3000/named/clown/bla
# "controller": "home",
# "action": "index",
# "silly": "clown",
# "whatevs": "bla"

  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
