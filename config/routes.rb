BamftServer::Application.routes.draw do
  get "factlets/new"

  get "factlets/edit"

  get "factlets/index"

  get "factlets/full_dump"

  get "factlets/random"

  get "announcements/new"

  get "announcements/show"
  
  get "announcements/edit"

  get "announcements/full_dump"

  get "menu_items/new"

  get "menu_items/edit"

  get "menu_items/full_dump"

  get "menu_items/index"

  get "landmarks/full_dump"

  get "trucks/full_dump"
  
  get "schedules/full_dump"

  get "trucks/morning"

  get "trucks/afternoon"

  get "trucks/evening"

  get "datapulls/full"

  get "datapulls/morning"

  get "datapulls/afternoon"

  get "datapulls/evening"

  get "schedules/morning_trucks"

  get "schedules/afternoon_trucks"

  get "schedules/evening_trucks"

  get "truckinfo/fetch"
  
  resources :truckinfos do
    collection do
      get 'fetch'
    end
  end
  
  resources :schedules
  resources :trucks
  resources :landmarks
  resources :menu_items
  resources :announcements
  resources :factlets
  
  resources :schedules do
    collection do
      get 'morning_trucks'
      get 'afternoon_trucks'
      get 'evening_trucks'
    end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
