Frontpage::Engine.routes.draw do
  resources :articles

  get 'frontpage/articles' => 'articles#index'

  root 'frontpage#index'
end
