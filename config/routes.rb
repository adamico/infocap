ActionController::Routing::Routes.draw do |map|

  map.resources :categories, :infos

  map.admin '/admin', :controller => 'welcome', :action => 'admin'
  map.root :controller => 'welcome'
end
