ActionController::Routing::Routes.draw do |map|
  map.resources :themes

  map.resources :categories

  map.resources :categories

  map.resources :infos
  map.root :controller => 'welcome'
end
