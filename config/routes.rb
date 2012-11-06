Patentserver::Application.routes.draw do

  get "pages/home"

  get "pages/terms"

  get "pages/about"

  get "pages/faq"

  get "pages/privacy"

  get "pages/contact"

  devise_for :users

  root :to => 'pages#home'
end
