Rails.application.routes.draw do
  get 'home/index'

  get 'db_views/teamSort'
  get 'db_views/citySort'
  get 'db_views/stadiumSort'
  get 'db_views/leagueSort'



  resources :sports_teams

  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
