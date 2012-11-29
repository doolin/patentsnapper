Patentserver::Application.routes.draw do

  devise_for :users

  scope "/api" do
    scope "/assignees" do
      match "/patent/:id" => "Api::Assignees#patent", as: :assignee_patent
      match "/asgtype/:id" => "Api::Assignees#asgtype", as: :assignee_asgtype
      match "/:id" => "Api::Assignees#show", as: :show_assignee
      root to: "Api::Assignees#index"
    end

    scope "/invpats" do
      # match "/state/:id" => "Api::Invpats/state", as: :invpats_state
      # match "/city/:id" => "Api::Invpats/city", as: :invpats_city
      root to: "Api::Invpats#index"
    end

    scope "/inventors" do
      match "/:id" => "Api::Inventors#show", as: :show_inventor
      # match "/state/:id" => "Api::Inventors/state", as: :inventors_state
      # match "/city/:id" => "Api::Inventors/city", as: :inventors_city
      root to: "Api::Inventors#index"
    end

    scope "/citations" do
      match "/:id" => "Api::Citations#show", as: :show_citation
      root to: "Api::Citations#index"
    end

    scope "/patents" do
      root to: "Api::Patents#index"
    end

    root to: "api#index"
  end

  match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get
  root :to => 'pages#home'
end
