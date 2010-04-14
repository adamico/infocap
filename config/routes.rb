ActionController::Routing::Routes.draw do |map|

  map.resources :categories do |categories|
    categories.resources :infos, :member => { :verifier => :put, :disable => :put, :suspend => :put }
  end

  map.admin '/admin', :controller => 'welcome', :action => 'admin'
  map.root :controller => 'welcome'
end
