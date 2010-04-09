ActionController::Routing::Routes.draw do |map|

  map.resources :categories do |categories|
    categories.resources :infos
  end

  map.admin '/admin', :controller => 'welcome', :action => 'admin'
  map.root :controller => 'welcome'
end
