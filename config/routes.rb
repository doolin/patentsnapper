Patentserver::Application.routes.draw do

  devise_for :users

  namespace :api, defaults: { format: :json } do
    scope "/assignees" do
      match "/patent/:id" => "Assignees#patent", as: :assignee_patent
      match "/asgtype/:id" => "Assignees#asgtype", as: :assignee_asgtype
      match "/:id" => "Assignees#show", as: :show_assignee
      root to: "Assignees#index"
    end

    scope "/invpats" do
      # match "/state/:id" => "Invpats/state", as: :invpats_state
      # match "/city/:id" => "Invpats/city", as: :invpats_city
      root to: "Invpats#index"
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
