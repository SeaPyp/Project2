Rails.application.routes.draw do
root 'users#new'

  get 'wines/show'
  get 'wines/new'
  get 'wines/destroy'

  get 'posts/:post_id/comments' => 'comments#index'
  post 'posts/:post_id/comments' => 'comments#create', as: :post_comments
  get 'posts/:post_id/comments/new' => 'comments#new'
  get 'posts/:post_id/comments/id/edit' => 'comments#edit'
  get 'posts/:post_id/comments/:id' => 'comments#show'
  patch 'posts/:post_id/comments' => 'comments#update'
  put 'posts/:post_id/comments' => 'comments#update'
  delete 'posts/:post_id/comments' => 'comments#destroy'

#     article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                      POST   /articles/:article_id/comments(.:format)          comments#create
#  new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
# edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#      article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                      PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
#                      PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                      DELETE /articles/:article_id/comments/:id(.:format)

  get 'posts/new'
  get 'posts/:id' => 'posts#show', as: :post
  # get 'posts/show'
  # get 'posts' => 'posts#index'
  get 'posts' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'

  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/welcome_user'
  get 'users/new_user_profile'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'



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
