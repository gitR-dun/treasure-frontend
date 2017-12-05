Rails.application.routes.draw do
  get '/search' => 'treasures#look'
  get '/back_and_forth_search' => 'back_and_forth#look'
  get '/db_hunt' => 'db_hunt#hunt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
