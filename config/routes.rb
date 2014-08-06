Rails.application.routes.draw do
  get 'photos', to: 'photos#index'
  post 'photos/:id', to: 'photos#show'

  resources :users, constraints: { subdomain: 'admin' }

  resources :prisoners, constraints: { id: /\d+/ }
  get 'reddit_clone/:name', to: 'threads#show', constraints: { name: /t_\w+/ }
  get 'reddit_clone/:name', to: 'users#show', constraints: { name: /u_\w+/ }

  resources :lotteries, constraints: Lottery.new
end
