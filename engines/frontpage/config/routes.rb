Frontpage::Engine.routes.draw do
  resources :articles
  root '/frontpage/articles'
end
