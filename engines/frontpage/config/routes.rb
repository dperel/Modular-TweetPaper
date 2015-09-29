Frontpage::Engine.routes.draw do
  resources :articles
  get 'frontpage/articles' => 'articles#index'
  get 'frontpage/refresh' => 'articles#refresh' #problematic --> rails tells me to go to frontpage/frontpage/refresh...
  root 'frontpage#index'
end
