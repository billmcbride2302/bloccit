Rails.application.routes.draw do
  
  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

  post 'users/confirm' => 'users#confirm'

  resources :topics do
 # #34
     resources :posts, except: [:index]
     resources :sponsored_posts, except: [:index]
   end

  resources :questions
  resources :advertisements 

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
