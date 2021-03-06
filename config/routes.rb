Rails.application.routes.draw do
  resources :vaccinations
  get 'welcome/index'

  get '/login' => "sessions#new", as: :login
  post '/login' => "sessions#create"
  delete '/login' => "sessions#destroy"

  resources :users, only: [:new, :create]

  # get 'clients/index'
  # get "/clients" => "clients#index"
  resources :clients, only: [:index, :show]
  # get '/pets' => "pets#index"
  # get '/pets/:id/edit' => "pets#edit", as: :edit_pet
  # get '/pets/:id' => "pets#show", as: :pet
  # patch '/pets/:id' => "pets#update"
  # delete '/pets/:id' => "pets#destroy"
  # post '/pets' => "pets#create"

  resources :pets

  get '/pets/:pet_id/visits/new' => "visits#new", as: :new_visit
  post '/pets/:pet_id/visits' => "visits#create", as: :visits

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
