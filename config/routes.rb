ActionController::Routing::Routes.draw do |map|
  map.resources :infos
  map.root :controller => 'welcome'
end
