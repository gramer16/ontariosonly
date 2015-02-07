Rails.application.routes.draw do
 

  

  scope "(:locale)", locale: /en|fr/ do
  
  resources :plans 
       
  resources :subscriptions
   

  resources :interiordesigners

  resources :countertops do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :customcabinets

  resources :cashbuyers do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :movingcompanies

  resources :poolrepairs

  resources :poolcleaners

  resources :solarscreens

  resources :windows

  resources :termiteinspectors

  resources :taxspecialists

  resources :titlecompanies

  resources :septics

  resources :securities

  resources :stagings

  resources :rentalproperties

  resources :accountants do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :lawyers

  resources :real_estatefirms

  resources :realtors

  resources :roofings

  resources :privatebanks

  resources :privatefirms

  resources :propertymanagementfirms

  resources :paintings

  resources :plumbings

  resources :molds

  resources :mortgages

  resources :landsurveyors

  resources :landscapings

  resources :insulations

  resources :hardmoneys

  resources :homeinspectors

  resources :generalcontractors

  resources :floorings

  resources :framings

  resources :drywalls

  resources :orders
  
  devise_for :users
  resources :subscriptionpackages do
    resources :orders
  end
  resources :asphalts do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :airconditioners do
    collection do
      get 'search'
    get :autocomplete
    end
  end  

  resources :services

  resources :arquitects do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  

  

 
  resources :commercialpropertiesforsales do
    collection do
      get 'search'
    end
  end
  
  resources :service_types

  resources :residentials do
    collection do
      get 'search'
      get 'bedrooms'
      get :autocomplete
    end
  end

  get 'pages/home'

  get 'pages/membership'
  get 'pages/privacypolicy'
  get 'pages/termsofuse'

  get 'pages/contactus'
  get 'pages/realestateservices'
  get 'seller' => "subscriptionpackages#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"



  root 'pages#home'

end

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
