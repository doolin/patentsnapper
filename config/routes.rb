Patentserver::Application.routes.draw do

=begin
  get "pages/home"
  get "pages/terms"
  get "pages/about"
  get "pages/faq"
  get "pages/privacy"
  get "pages/contact"
=end

  match '/footer',    :to => "pages#footer",         :as => :footer

  match '/index',     :to => "pages#index",          :as => :index
  match '/about',     :to => "pages#about",          :as => :about
  match '/terms',     :to => "pages#terms",          :as => :terms
  match '/faq',       :to => "pages#faq",            :as => :faq
  match '/privacy',   :to => "pages#privacy",        :as => :privacy
  match '/contact',   :to => "pages#contact",        :as => :contact
  match '/plans-and-pricing',  :to => "pages#plans", :as => :plans
  match '/features',  :to => "pages#features",       :as => :features
  match '/team',      :to => "pages#team",           :as => :team
  match '/popemail',  :to => "pages#popemail",       :as => :popemail
  match '/sendemail', :to => "pages#sendemail",      :as => :sendemail

  devise_for :users

  root :to => 'pages#home'
end
