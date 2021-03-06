Rails.application.routes.draw do

  resources :tags
  resources :comments
  resources :issues
  get 'user/new'

  get 'user/create'

  get 'user/update'

  get 'user/edit'

  get 'user/destroy'

  get 'user/index'

  get 'user/show'

  get 'user/confirm'

  get 'user_controller/new'

  get 'user_controller/create'

  get 'user_controller/update'

  get 'user/:id' => 'user#project_list'

  get 'projects/issue/:id' => 'issues#issue_list'

  get 'issues/comment/:id' => 'issues#comment_list'

  root to: redirect(path: '/app/')

  get 'user_controller/edit'

  get 'user_controller/destroy'

  get 'user_controller/index'

  get 'user_controller/show'


  get '/projects/:id/add_user' => 'projects#add_user'
  resources :projects
  scope '/api' do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :groups, except: [:new, :edit]
  end

  resources :projects
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
