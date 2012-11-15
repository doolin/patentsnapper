Patentserver::Application.routes.draw do

  devise_for :users

  match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get
  root :to => 'pages#home'
end
