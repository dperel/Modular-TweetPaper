Frontpage::Engine.routes.draw do
  resources :frontpages
  root 'frontpages#index'
end
