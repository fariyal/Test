Rails.application.routes.draw do
 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
get "student/new" => 'students#new', :as => 'student_new' 

post "student/new" => 'students#create', :as => 'student_create' 

get "student/list" => 'students#index', :as => 'students_list' 

get "student/:id/edit" => 'students#edit', :as => 'student_edit' 

put "student/:id/edit" => 'students#update', :as => 'student_update' 

delete "student/:id" => 'students#destroy', :as => 'student_destroy'

get "student/:id/show" => 'students#show', :as => 'student_show'



 get 'project/index' =>'projects#index', :as =>'projects_list'

 get 'projects/new' =>'projects#new', :as => 'project_new'

 post "project/new" => 'projects#create', :as => 'project_create' 

 get "project/:id/edit" => 'projects#edit', :as => 'project_edit' 
 
 put "project/:id/edit" => 'projects#update', :as => 'project_update'




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
