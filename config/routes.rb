Rails.application.routes.draw do

  root  'movies#home'
  post  '/', to:'movies#create'
  post  'movies/search/(:moviename)', to:'movies#search', :as =>'search_result'
  get  'movies/search', to:'movies#home'

end
