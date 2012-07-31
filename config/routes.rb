PollStar::Application.routes.draw do
  
  resources :polls do
    resources :questions do
      resources :responses
    end
  end
  

  root :to => 'polls#index'
end