Frontpage::Engine.routes.draw do
  resources :articles
  get 'frontpage/articles' => 'articles#index'
  get 'frontpage/refresh' => 'articles#refresh' #problematic --> rails tells me to go to frontpage/frontpage/refresh...
  get 'frontpage/star' => 'articles#star', :as => :star_article
  root 'frontpage#index'
end
