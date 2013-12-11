ChimeApp::Application.routes.draw do
  # get "static_pages/index"
  # get "causes/index"

  # resources :users, :only => [:create, :new, :show]
 # resource :session, :only => [:create, :destroy, :new] 
  resources :causes, :only => [:show, :index] do
    resources :chimes, only: [:new, :create, :index, :show, :edit, :update] do
      resources :resonates, only: [:new, :create, :destroy]
    end
  end
  resources :users, :only => [:show, :index]
  
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  
  match "*path" => "api#xss_options_request", :constraints => {:method => "OPTIONS"}
  
end
