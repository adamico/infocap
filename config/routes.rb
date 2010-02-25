Infocap::Application.routes.draw do
  resources :themes
  resources :categories
  resources :infos
  match '/' => 'welcome#index'
end
