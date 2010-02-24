ActionController::Routing::Routes.draw do |map|
  map.resources :infos do |info|
    info.resources :phone_numbers
  end
  map.root :controller => 'welcome'
end
