Instagram::Application.routes.draw do
  root to: 'users#index'

  get "/oauth/connect" => 'instagram#connect', :as => 'oauth_connect'
  get "/oauth/callback" => 'instagram#callback', :as => 'oauth_callback'
end
