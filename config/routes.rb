ActionController::Routing::Routes.draw do |map|
  map.resources :themes, :categories, :infos
  map.admin '/admin', :controller => 'welcome', :action => 'admin'
  map.root :controller => 'welcome'
end
