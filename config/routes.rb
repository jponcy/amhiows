Amhiows::Application.routes.draw do
  match '/contact' => 'pages#contact', :as => :contact
  match '/about' => 'pages#about', :as => :about
  root :to => 'pages#home', :as => :home

  ## TODO review these links
  #get "products/show"
  match '/products/:id' => 'products#show', :as => :product
end
