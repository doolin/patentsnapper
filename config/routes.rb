Patentserver::Application.routes.draw do

  devise_for :users

  namespace :api, defaults: { format: :json } do
    scope "/assignees" do
      match "/" => "Assignees#index", as: :assignees
    end

    scope "/invpats" do
      match "/" => "InvPats#index", as: :inv_pats
    end

    scope "/inventors" do
      match "/:id" => "Inventors#show", as: :show_inventor
      # match "/state/:id" => "Inventors/state", as: :inventors_state
      # match "/city/:id" => "Inventors/city", as: :inventors_city
      root to: "Inventors#index"
    end

    scope "/citations" do
      match "/:id" => "Citations#show", as: :show_citation
      root to: "Citations#index"
    end

    scope "/patents" do
      match "/:id" => "Patents#show", as: :show_patent
      root to: "Patents#index"
    end
    
    scope "/patent_descs" do
      root to: "PatentDescs#index"
    end

    root to: "api#index"
  end

  match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get
  root :to => 'pages#home'
end
