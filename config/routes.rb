Rails.application.routes.draw do
  get 'home/index'

  get 'db_views/teamSort'
  get 'db_views/citySort'
  get 'db_views/stadiumSort'
  get 'db_views/leagueSort'
  get 'db_views/editCustom'

  get 'search/search'
  post 'search/search'

  resources :sports_teams

  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
