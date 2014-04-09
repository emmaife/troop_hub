Rails.application.routes.draw do

# resources :troops do
#   resources :scouts, :only => [:new, :create, :show, :update]

  get '/troops/:troop_id/scouts' => 'scouts#index', :as => :troop_scouts

  get '/troops/:troop_id/scouts/new' => 'scouts#new', :as => :new_troop_scout

  # get '/scouts'

  post '/troops/:troop_id/scouts' => 'scouts#create'

  get '/troops/:troop_id/scouts/:id' => 'scouts#show'

  get '/troops/:troop_id/scouts/edit/:id' => 'scouts#edit'

  patch '/troops/:troop_id/scouts/update/:id' => 'scouts#update'

  delete '/troops/:troop_id/scouts/destroy' => 'scouts#destroy'
  
  # get '/troops/:troop_id/scouts' => 'scouts#index'

  # get '/troops/:troop_id/scouts/new' => 'scouts#new'

  # # get '/scouts'

  # post '/troops/:troop_id/scouts' => 'scouts#create'

  # get 'troops/:troop_id/scouts/:id' => 'scouts#show'

  # get '/troops/:troop_id/scouts/edit/:id' => 'scouts#edit'

  # patch 'troops/:troop_id/scouts/update/:id' => 'scouts#update'

  # delete '/troops/:troop_id/scouts/destroy' => 'scouts#destroy'


  get '/troops' => 'troops#index'

  get 'troops/new' => 'troops#new'

  post '/troops' => 'troops#create'

  get 'troops/edit/:id' => 'troops#edit'

  get 'troops/:id' => 'troops#show'

  patch 'troops/update/:id' => 'troops#update'

  delete 'troops/destroy' => 'troops#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
