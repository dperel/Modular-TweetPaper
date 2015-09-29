Frontpage::Engine.routes.draw do
  resources :articles
  get 'frontpage/articles' => 'articles#index'
  get 'frontpage/refresh' => 'articles#refresh'
  root 'frontpage#index'
end
