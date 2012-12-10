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
      match "/" => "Inventors#index", as: :inventors
    end

    scope "/citations" do
      match "/" => "Citations#index", as: :citations
    end

    scope "/patents" do
      match "/" => "Patents#index", as: :patents
    end
    
    scope "/patent_descs" do
      match "/" => "PatentDescs#index", as: :patent_descs
    end

    root to: "api#index"
  end

  match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get
  root :to => 'pages#home'
end
