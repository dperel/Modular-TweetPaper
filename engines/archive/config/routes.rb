Archive::Engine.routes.draw do
  resources :clippings
  get 'archive/clippings' => 'clippings#index'
end
