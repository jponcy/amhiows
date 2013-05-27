Amhiows::Application.routes.draw do
  match '/contact' => 'pages#contact', :as => :contact
  match '/about' => 'pages#about', :as => :about
  root :to => 'pages#home', :as => :home

end
