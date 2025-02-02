Rails.application.routes.draw do
  devise_for :admins,  skip: [:registrations] 

  as :admin do
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end

  get 'home/show', to: "home#show"
  root "home#show"

  get "/quotes", to: "quotes#index"
  post "/quotes", to: "quotes#create" 
  get "/quotes/new", to: "quotes#new"
  get "/quotes/:id", to: "quotes#show", as: :quote
  get "/quotes/:id/edit", to: "quotes#edit", as: :edit_quote
  patch "/quotes/:id", to: "quotes#update"
  delete "/quotes/:id", to: "quotes#destroy"
  
   #root "quotes#index"
end
