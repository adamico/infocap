ActionController::Routing::Routes.draw do |map|
  map.resources :categories

  map.resources :categories

  map.resources :infos
  map.root :controller => 'welcome'
end
