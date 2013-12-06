ChimeApp::Application.routes.draw do
  # resources :users, :only => [:create, :new, :show]
 # resource :session, :only => [:create, :destroy, :new] 
  resources :causes, :only => [:show, :index] do
    resources :chimes, only: [:new, :create, :index, :show]
  end
end
