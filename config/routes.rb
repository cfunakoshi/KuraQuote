Rails.application.routes.draw do
 
  get 'quotes/print'
  get 'quotes/new'
  get 'quotes/edit'
  get 'comparators/show'
  get 'quotes/create'
  get 'insurer/index'
  root 'staticpages#start'
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'vehicles/new'
  get 'vehicles/create'
  get 'vehicles/edit'
  get 'basicinfos/new'
  get 'basicinfos/edit'
  get 'vehicles/destroy'
  get 'coverages/new'
  get 'coverages/edit'
  get 'coverages/create'
  get 'coveragenew' => 'coverages#new'
  get 'coverageedit' => 'coverages#edit'
  get 'vehiclenew' => 'vehicles#new'
  get 'vehicleedit' => 'vehicles#edit'
  get 'basicinfosnew' => 'basicinfos#new'
  get 'basicinfosedit' => 'basicinfos#edit'
  get 'quotes' => 'quotes#show'
  get 'signup' => 'users#new'
  get 'home' => 'staticpages#home'
  get 'users' =>  'users#show'
  get 'index' => 'users#index'
    get 'client' => 'users#client'
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'comparator' => 'comparators#show'
  get 'newquote' => 'quotes#new'
  get 'editquote' => 'quotes#edit'
  post 'print' => 'quotes#print'
  post 'comparators/update'
  

  resources :users do
    member do
      get :confirm_email
    end
  end
  
  resources :users do post :add, :on=>:collection
  end

  
  resources :basicinfos
  resources :vehiclemanufacturers
  resources :vehiclemodels
  resources :vehiclespecs
  resources :vehicleuses
  resources :vehiclevins
  resources :vehicles
  resources :bodilyinjurys
  resources :collisions
  resources :comprehensives
  resources :piprotections
  resources :propertydamages
  resources :undermotorists
  resources :unmotorists
  resources :coverages
  resources :companylist
  resources :quotes
  resources :lookups

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
